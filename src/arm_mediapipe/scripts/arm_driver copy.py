#!/usr/bin/env python3
# encoding: utf-8

import rospy
from Arm_Lib import Arm_Device
from yahboomcar_msgs.msg import ArmJoint
from std_msgs.msg import Bool
import time

# 로봇팔 객체 생성
Arm = Arm_Device()

# ✅ 조인트 각도 제한 설정 (조인트 번호 기준: 1~6)
JOINT_LIMITS = {
    1: (0, 360),   # 조인트1
    2: (30, 180),   # 조인트2
    3: (40, 170),   # 조인트3
    4: (20, 150),   # 조인트4
    5: (0, 180),   # 조인트5
    6: (0, 180),  # 조인트6 (그리퍼)
}

# ✅ 제한 적용 함수
def clip_angle(servo_id, angle):
    min_angle, max_angle = JOINT_LIMITS.get(servo_id, (0, 180))
    if angle < min_angle or angle > max_angle:
        rospy.logwarn(f"[Servo {servo_id}] 제한 범위 벗어남: {angle}° → [{min_angle}° ~ {max_angle}°]로 클램핑됨")
    return max(min(angle, max_angle), min_angle)

# ✅ 초기 자세
Arm.Arm_serial_servo_write6(90.0, 145.0, 0.0, 30.0, 90.0, 31.0, 1000)
time.sleep(1)
print("init done")

# ✅ Arm 제어 콜백
def Armcallback(msg):
    if not isinstance(msg, ArmJoint): 
        rospy.logwarn("ArmJoint 메시지 형식이 아님")
        return

    if len(msg.joints) != 0:
        # ✅ 각 조인트 제한 적용
        angles = [clip_angle(i + 1, msg.joints[i]) for i in range(6)]
        for _ in range(2):  # 반복 전송
            Arm.Arm_serial_servo_write6(*angles, time=msg.run_time)
            print("각 조인트 제어")
            time.sleep(0.01)
    else:
        # ✅ 단일 조인트 제어
        angle = clip_angle(msg.id, msg.angle)
        for _ in range(2):
            Arm.Arm_serial_servo_write(msg.id, angle, msg.run_time)
            print("단일 조인트 제어")
            time.sleep(0.01)

# ✅ 부저 제어 콜백
def Buzzercallback(msg):
    if not isinstance(msg, Bool): 
        rospy.logwarn("Bool 메시지 형식이 아님")
        return
    if msg.data:
        rospy.loginfo("🔊 Beep ON")
        Arm.Arm_Buzzer_On()
    else:
        rospy.loginfo("🔇 Beep OFF")
        Arm.Arm_Buzzer_Off()

# ✅ ROS Subscriber 등록
sub_Arm = rospy.Subscriber("TargetAngle", ArmJoint, Armcallback, queue_size=1000)
sub_Buzzer = rospy.Subscriber("Buzzer", Bool, Buzzercallback, queue_size=1000)

# ✅ 메인 노드 실행
if __name__ == '__main__':
    Arm.Arm_serial_servo_write6(90.0, 145.0, 0.0, 30.0, 90.0, 31.0, 1000)
    rospy.init_node("arm_driver_node", anonymous=True)
    rospy.spin()
