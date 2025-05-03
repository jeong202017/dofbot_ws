# -------------------------------------#
#       调用摄像头检测
# -------------------------------------#
from yolo import YOLO
import cv2
import time
import tensorflow as tf

gpus = tf.config.experimental.list_physical_devices(device_type='GPU')
for gpu in gpus:
    tf.config.experimental.set_memory_growth(gpu, True)

yolo = YOLO()
# 调用摄像头
capture = cv2.VideoCapture(0)  # capture=cv2.VideoCapture("1.mp4")
fps = 0.0
t1 = time.time()
while (True):
    t1 = time.time()
    # 读取某一帧
    ref, frame = capture.read()
    # 进行检测
    frame = yolo.detect_image(frame)
    fps = (fps + (1. / (time.time() - t1))) / 2
    # print("fps= %.2f"%(fps))
    # t2 = time.time()
    # fps=1000*(t2-t1)
    frame = cv2.putText(frame, "fps= %.2f" % (fps), (0, 40), cv2.FONT_HERSHEY_SIMPLEX, 1, (0, 255, 0), 2)
    cv2.imshow("video", frame)
    c = cv2.waitKey(1) & 0xff
    if c == 27: break
# yolo.close_session()
