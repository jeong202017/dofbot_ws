#!/usr/bin/env python3
# encoding: utf-8
import rospy
import cv2 as cv
import numpy as np
import threading
from time import sleep, time
from media_library import *
from yahboomcar_msgs.msg import ArmJoint
from std_msgs.msg import Bool

class PoseToArmController:
    def __init__(self):
        rospy.init_node('pose_to_arm_controller', anonymous=True)
        self.pub_arm = rospy.Publisher("TargetAngle", ArmJoint, queue_size=10)
        self.pub_buzzer = rospy.Publisher("Buzzer", Bool, queue_size=10)

        self.pose_detector = Holistic()
        self.hand_detector = HandDetector()
        self.media_ros = Media_ROS()

        self.pTime = time()
        self.event = threading.Event()
        self.event.set()
        self.index = 0
        self.stop_status = 0
        self.Joy_active = True

    def process(self, frame):
        if self.Joy_active:
            frame, pointArray, lhandptArray, rhandptArray = self.pose_detector.findHolistic(frame)
            threading.Thread(target=self.arm_ctrl_threading, args=(pointArray, lhandptArray, rhandptArray)).start()

        fps = 1 / (time() - self.pTime)
        self.pTime = time()
        cv.putText(frame, f"FPS : {int(fps)}", (20, 30), cv.FONT_HERSHEY_SIMPLEX, 0.9, (0, 0, 255), 1)
        self.media_ros.pub_imgMsg(frame)
        return frame

    def arm_ctrl_threading(self, pointArray, lhandptArray, rhandptArray):
        if not self.event.is_set():
            return
        self.event.clear()

        if len(pointArray) == 0:
            self.event.set()
            return

        joints = [0, 145, 0, 0, 90, 30]  # default
        grip_joint = 30

        try:
            point11 = pointArray[11][1:3]
            point12 = pointArray[12][1:3]
            point13 = pointArray[13][1:3]
            point15 = pointArray[15][1:3]
            point21 = pointArray[21][1:3]

            angle11 = round(calc_angle(point11, point12, point13), 2)
            angle13 = round(180 - calc_angle(point11, point13, point15), 2)

            if len(lhandptArray) != 0:
                point0 = lhandptArray[0][1:3]
                point4 = lhandptArray[4][1:3]
                point8 = lhandptArray[8][1:3]
                angle15 = round(180 - calc_angle(point13, point0, point8), 2)
                if point8[1] > point0[1]:
                    angle15 = -angle15
                grip_angle = round(180 - calc_angle(point4, point0, point8), 2)
                grip_joint = np.interp(grip_angle, [90, 180], [30, 190])
            else:
                angle15 = round(180 - calc_angle(point13, point15, point21), 2)
                if point21[1] > point15[1]:
                    angle15 = -angle15
                grip_joint = 30

            if point13[1] > point11[1]:
                angle11 = -angle11
            if point15[1] > point13[1]:
                angle13 = -angle13

            angle13 += 90
            angle15 += 90

            # 예외 상황 판단
            if abs(angle11) > 20:
                rospy.logwarn("⚠ 어깨 각도 초과. 동작 제한.")
                self.pub_buzzer.publish(Bool(data=True))
                self.index += 1
                self.event.set()
                return

            if angle11 < 0:
                angle11 = 0
            angle11 = np.interp(angle11, [0, 30], [0, 90])

            joints = [0, angle11, angle13, angle15, 90, grip_joint]
            arm_msg = ArmJoint(joints=joints, run_time=1000)
            self.pub_arm.publish(arm_msg)
            self.index = 0

        except Exception as e:
            rospy.logerr(f"오류 발생: {e}")

        self.event.set()


if __name__ == '__main__':
    cap = cv.VideoCapture(0)
    cap.set(6, cv.VideoWriter.fourcc('M', 'J', 'P', 'G'))
    cap.set(cv.CAP_PROP_FRAME_WIDTH, 640)
    cap.set(cv.CAP_PROP_FRAME_HEIGHT, 480)

    node = PoseToArmController()
    rospy.loginfo("🎬 Pose-based Arm Control 시작됨")
    while not rospy.is_shutdown() and cap.isOpened():
        ret, frame = cap.read()
        if not ret:
            break
        frame = node.process(frame)
        cv.imshow("PoseArmControl", frame)
        if cv.waitKey(1) & 0xFF == ord('q'):
            break
    cap.release()
    cv.destroyAllWindows()