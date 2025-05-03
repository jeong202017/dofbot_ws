#!/usr/bin/env python3
# encoding: utf-8
import threading
import cv2 as cv
import numpy as np
from media_library import *  # Media_ROS, Holistic, HandDetector, calc_angle 등을 포함하는 사용자 정의 라이브러리
from time import sleep, time

class PoseCtrlArm:
    def __init__(self):
        self.car_status = True
        self.stop_status = 0
        self.locking = False
        self.pose_detector = Holistic()
        self.hand_detector = HandDetector()
        self.pTime = self.index = 0
        self.media_ros = Media_ROS()
        self.event = threading.Event()
        self.event.set()
        self.Joy_active = True

    def process(self, frame):
        if self.Joy_active:
            frame, pointArray, lhandptArray, rhandptArray = self.pose_detector.findHolistic(frame)
            threading.Thread(target=self.arm_ctrl_threading, args=(frame, pointArray, lhandptArray, rhandptArray)).start()

        self.cTime = time()
        fps = 1 / (self.cTime - self.pTime)
        self.pTime = self.cTime
        text = "FPS : " + str(int(fps))
        cv.putText(frame, text, (20, 30), cv.FONT_HERSHEY_SIMPLEX, 0.9, (0, 0, 255), 1)

        self.media_ros.pub_imgMsg(frame)
        return frame

    def arm_ctrl_threading(self, frame, pointArray, lhandptArray, rhandptArray):
        if self.event.is_set():
            self.event.clear()

            joints = [0, 145, 0, 0, 90, 30]  # 기본 자세

            if self.stop_status <= 30:
                self.media_ros.pub_vel(0, 0)
                self.stop_status += 1

            if len(pointArray) != 0:
                point11 = pointArray[11][1:3]
                point12 = pointArray[12][1:3]
                point13 = pointArray[13][1:3]
                point15 = pointArray[15][1:3]
                point21 = pointArray[21][1:3]

                # ✅ 어깨 중심 기준 base 조인트 회전 계산
                center_x = (point11[0] + point12[0]) / 2
                frame_center = frame.shape[1] / 2
                x_offset = center_x - frame_center
                normalized = x_offset / frame_center
                base_angle = np.interp(normalized, [-1, 1], [60, 120])

                angle11 = round(calc_angle(point11, point12, point13), 2)
                angle13 = round(180 - calc_angle(point11, point13, point15), 2)

                if len(lhandptArray) != 0:
                    point0 = lhandptArray[0][1:3]
                    point4 = lhandptArray[4][1:3]
                    point8 = lhandptArray[8][1:3]

                    angle15 = round(180 - calc_angle(point13, point0, point8), 2)
                    if point8[1] > point0[1]: angle15 = -angle15

                    grip_angle = round(180 - calc_angle(point4, point0, point8), 2)
                    grip_joint = np.interp(grip_angle, [90, 180], [30, 190])
                else:
                    angle15 = round(180 - calc_angle(point13, point15, point21), 2)
                    if point21[1] > point15[1]: angle15 = -angle15
                    grip_joint = 30

                if point13[1] > point11[1]: angle11 = -angle11
                if point15[1] > point13[1]: angle13 = -angle13

                angle13 += 90
                angle15 += 90

                print(angle11)

                if abs(angle11) > 20:
                    print("shoulder up")
                else:
                    if angle11 < 0: angle11 = 0
                    angle11 = np.interp(angle11, [0, 30], [0, 90])

                    # ✅ base_angle 적용
                    self.media_ros.pub_arm([base_angle, angle11, angle13, angle15, 90, grip_joint])

                    print(f"조인트 값 - base: {base_angle:.2f}, shoulder: {angle11:.2f}, elbow: {angle13:.2f}, wrist: {angle15:.2f}, grip: {grip_joint:.2f}")

                    self.index = 0

                self.event.set()
            else:
                self.event.set()

if __name__ == '__main__':
    rospy.init_node('PoseCtrlArm_node', anonymous=True)
    pose_ctrl_arm = PoseCtrlArm()
    capture = cv.VideoCapture(0)
    capture.set(6, cv.VideoWriter.fourcc('M', 'J', 'P', 'G'))
    capture.set(cv.CAP_PROP_FRAME_WIDTH, 640)
    capture.set(cv.CAP_PROP_FRAME_HEIGHT, 480)
    print("capture get FPS : ", capture.get(cv.CAP_PROP_FPS))

    while capture.isOpened():
        ret, frame = capture.read()
        frame = pose_ctrl_arm.process(frame)
        if cv.waitKey(1) & 0xFF == ord('q'): break
        cv.imshow('frame', frame)

    capture.release()
    cv.destroyAllWindows()
