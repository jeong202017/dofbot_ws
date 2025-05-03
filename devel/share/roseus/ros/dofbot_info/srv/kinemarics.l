;; Auto-generated. Do not edit!


(when (boundp 'dofbot_info::kinemarics)
  (if (not (find-package "DOFBOT_INFO"))
    (make-package "DOFBOT_INFO"))
  (shadow 'kinemarics (find-package "DOFBOT_INFO")))
(unless (find-package "DOFBOT_INFO::KINEMARICS")
  (make-package "DOFBOT_INFO::KINEMARICS"))
(unless (find-package "DOFBOT_INFO::KINEMARICSREQUEST")
  (make-package "DOFBOT_INFO::KINEMARICSREQUEST"))
(unless (find-package "DOFBOT_INFO::KINEMARICSRESPONSE")
  (make-package "DOFBOT_INFO::KINEMARICSRESPONSE"))

(in-package "ROS")





(defclass dofbot_info::kinemaricsRequest
  :super ros::object
  :slots (_tar_x _tar_y _tar_z _Roll _Pitch _Yaw _cur_joint1 _cur_joint2 _cur_joint3 _cur_joint4 _cur_joint5 _cur_joint6 _kin_name ))

(defmethod dofbot_info::kinemaricsRequest
  (:init
   (&key
    ((:tar_x __tar_x) 0.0)
    ((:tar_y __tar_y) 0.0)
    ((:tar_z __tar_z) 0.0)
    ((:Roll __Roll) 0.0)
    ((:Pitch __Pitch) 0.0)
    ((:Yaw __Yaw) 0.0)
    ((:cur_joint1 __cur_joint1) 0.0)
    ((:cur_joint2 __cur_joint2) 0.0)
    ((:cur_joint3 __cur_joint3) 0.0)
    ((:cur_joint4 __cur_joint4) 0.0)
    ((:cur_joint5 __cur_joint5) 0.0)
    ((:cur_joint6 __cur_joint6) 0.0)
    ((:kin_name __kin_name) "")
    )
   (send-super :init)
   (setq _tar_x (float __tar_x))
   (setq _tar_y (float __tar_y))
   (setq _tar_z (float __tar_z))
   (setq _Roll (float __Roll))
   (setq _Pitch (float __Pitch))
   (setq _Yaw (float __Yaw))
   (setq _cur_joint1 (float __cur_joint1))
   (setq _cur_joint2 (float __cur_joint2))
   (setq _cur_joint3 (float __cur_joint3))
   (setq _cur_joint4 (float __cur_joint4))
   (setq _cur_joint5 (float __cur_joint5))
   (setq _cur_joint6 (float __cur_joint6))
   (setq _kin_name (string __kin_name))
   self)
  (:tar_x
   (&optional __tar_x)
   (if __tar_x (setq _tar_x __tar_x)) _tar_x)
  (:tar_y
   (&optional __tar_y)
   (if __tar_y (setq _tar_y __tar_y)) _tar_y)
  (:tar_z
   (&optional __tar_z)
   (if __tar_z (setq _tar_z __tar_z)) _tar_z)
  (:Roll
   (&optional __Roll)
   (if __Roll (setq _Roll __Roll)) _Roll)
  (:Pitch
   (&optional __Pitch)
   (if __Pitch (setq _Pitch __Pitch)) _Pitch)
  (:Yaw
   (&optional __Yaw)
   (if __Yaw (setq _Yaw __Yaw)) _Yaw)
  (:cur_joint1
   (&optional __cur_joint1)
   (if __cur_joint1 (setq _cur_joint1 __cur_joint1)) _cur_joint1)
  (:cur_joint2
   (&optional __cur_joint2)
   (if __cur_joint2 (setq _cur_joint2 __cur_joint2)) _cur_joint2)
  (:cur_joint3
   (&optional __cur_joint3)
   (if __cur_joint3 (setq _cur_joint3 __cur_joint3)) _cur_joint3)
  (:cur_joint4
   (&optional __cur_joint4)
   (if __cur_joint4 (setq _cur_joint4 __cur_joint4)) _cur_joint4)
  (:cur_joint5
   (&optional __cur_joint5)
   (if __cur_joint5 (setq _cur_joint5 __cur_joint5)) _cur_joint5)
  (:cur_joint6
   (&optional __cur_joint6)
   (if __cur_joint6 (setq _cur_joint6 __cur_joint6)) _cur_joint6)
  (:kin_name
   (&optional __kin_name)
   (if __kin_name (setq _kin_name __kin_name)) _kin_name)
  (:serialization-length
   ()
   (+
    ;; float64 _tar_x
    8
    ;; float64 _tar_y
    8
    ;; float64 _tar_z
    8
    ;; float64 _Roll
    8
    ;; float64 _Pitch
    8
    ;; float64 _Yaw
    8
    ;; float64 _cur_joint1
    8
    ;; float64 _cur_joint2
    8
    ;; float64 _cur_joint3
    8
    ;; float64 _cur_joint4
    8
    ;; float64 _cur_joint5
    8
    ;; float64 _cur_joint6
    8
    ;; string _kin_name
    4 (length _kin_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _tar_x
       (sys::poke _tar_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _tar_y
       (sys::poke _tar_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _tar_z
       (sys::poke _tar_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Roll
       (sys::poke _Roll (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Pitch
       (sys::poke _Pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Yaw
       (sys::poke _Yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cur_joint1
       (sys::poke _cur_joint1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cur_joint2
       (sys::poke _cur_joint2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cur_joint3
       (sys::poke _cur_joint3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cur_joint4
       (sys::poke _cur_joint4 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cur_joint5
       (sys::poke _cur_joint5 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cur_joint6
       (sys::poke _cur_joint6 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _kin_name
       (write-long (length _kin_name) s) (princ _kin_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _tar_x
     (setq _tar_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _tar_y
     (setq _tar_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _tar_z
     (setq _tar_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Roll
     (setq _Roll (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Pitch
     (setq _Pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Yaw
     (setq _Yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cur_joint1
     (setq _cur_joint1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cur_joint2
     (setq _cur_joint2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cur_joint3
     (setq _cur_joint3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cur_joint4
     (setq _cur_joint4 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cur_joint5
     (setq _cur_joint5 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cur_joint6
     (setq _cur_joint6 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _kin_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _kin_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass dofbot_info::kinemaricsResponse
  :super ros::object
  :slots (_joint1 _joint2 _joint3 _joint4 _joint5 _joint6 _x _y _z _Roll _Pitch _Yaw ))

(defmethod dofbot_info::kinemaricsResponse
  (:init
   (&key
    ((:joint1 __joint1) 0.0)
    ((:joint2 __joint2) 0.0)
    ((:joint3 __joint3) 0.0)
    ((:joint4 __joint4) 0.0)
    ((:joint5 __joint5) 0.0)
    ((:joint6 __joint6) 0.0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:Roll __Roll) 0.0)
    ((:Pitch __Pitch) 0.0)
    ((:Yaw __Yaw) 0.0)
    )
   (send-super :init)
   (setq _joint1 (float __joint1))
   (setq _joint2 (float __joint2))
   (setq _joint3 (float __joint3))
   (setq _joint4 (float __joint4))
   (setq _joint5 (float __joint5))
   (setq _joint6 (float __joint6))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _Roll (float __Roll))
   (setq _Pitch (float __Pitch))
   (setq _Yaw (float __Yaw))
   self)
  (:joint1
   (&optional __joint1)
   (if __joint1 (setq _joint1 __joint1)) _joint1)
  (:joint2
   (&optional __joint2)
   (if __joint2 (setq _joint2 __joint2)) _joint2)
  (:joint3
   (&optional __joint3)
   (if __joint3 (setq _joint3 __joint3)) _joint3)
  (:joint4
   (&optional __joint4)
   (if __joint4 (setq _joint4 __joint4)) _joint4)
  (:joint5
   (&optional __joint5)
   (if __joint5 (setq _joint5 __joint5)) _joint5)
  (:joint6
   (&optional __joint6)
   (if __joint6 (setq _joint6 __joint6)) _joint6)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:Roll
   (&optional __Roll)
   (if __Roll (setq _Roll __Roll)) _Roll)
  (:Pitch
   (&optional __Pitch)
   (if __Pitch (setq _Pitch __Pitch)) _Pitch)
  (:Yaw
   (&optional __Yaw)
   (if __Yaw (setq _Yaw __Yaw)) _Yaw)
  (:serialization-length
   ()
   (+
    ;; float64 _joint1
    8
    ;; float64 _joint2
    8
    ;; float64 _joint3
    8
    ;; float64 _joint4
    8
    ;; float64 _joint5
    8
    ;; float64 _joint6
    8
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ;; float64 _Roll
    8
    ;; float64 _Pitch
    8
    ;; float64 _Yaw
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _joint1
       (sys::poke _joint1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _joint2
       (sys::poke _joint2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _joint3
       (sys::poke _joint3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _joint4
       (sys::poke _joint4 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _joint5
       (sys::poke _joint5 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _joint6
       (sys::poke _joint6 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Roll
       (sys::poke _Roll (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Pitch
       (sys::poke _Pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Yaw
       (sys::poke _Yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _joint1
     (setq _joint1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _joint2
     (setq _joint2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _joint3
     (setq _joint3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _joint4
     (setq _joint4 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _joint5
     (setq _joint5 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _joint6
     (setq _joint6 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Roll
     (setq _Roll (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Pitch
     (setq _Pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Yaw
     (setq _Yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass dofbot_info::kinemarics
  :super ros::object
  :slots ())

(setf (get dofbot_info::kinemarics :md5sum-) "d4d7066ccc45dfff67e7b0b528d14e9b")
(setf (get dofbot_info::kinemarics :datatype-) "dofbot_info/kinemarics")
(setf (get dofbot_info::kinemarics :request) dofbot_info::kinemaricsRequest)
(setf (get dofbot_info::kinemarics :response) dofbot_info::kinemaricsResponse)

(defmethod dofbot_info::kinemaricsRequest
  (:response () (instance dofbot_info::kinemaricsResponse :init)))

(setf (get dofbot_info::kinemaricsRequest :md5sum-) "d4d7066ccc45dfff67e7b0b528d14e9b")
(setf (get dofbot_info::kinemaricsRequest :datatype-) "dofbot_info/kinemaricsRequest")
(setf (get dofbot_info::kinemaricsRequest :definition-)
      "# request
float64 tar_x
float64 tar_y
float64 tar_z
float64 Roll
float64 Pitch
float64 Yaw
float64 cur_joint1
float64 cur_joint2
float64 cur_joint3
float64 cur_joint4
float64 cur_joint5
float64 cur_joint6
string  kin_name
---
# response
float64 joint1
float64 joint2
float64 joint3
float64 joint4
float64 joint5
float64 joint6
float64 x
float64 y
float64 z
float64 Roll
float64 Pitch
float64 Yaw



")

(setf (get dofbot_info::kinemaricsResponse :md5sum-) "d4d7066ccc45dfff67e7b0b528d14e9b")
(setf (get dofbot_info::kinemaricsResponse :datatype-) "dofbot_info/kinemaricsResponse")
(setf (get dofbot_info::kinemaricsResponse :definition-)
      "# request
float64 tar_x
float64 tar_y
float64 tar_z
float64 Roll
float64 Pitch
float64 Yaw
float64 cur_joint1
float64 cur_joint2
float64 cur_joint3
float64 cur_joint4
float64 cur_joint5
float64 cur_joint6
string  kin_name
---
# response
float64 joint1
float64 joint2
float64 joint3
float64 joint4
float64 joint5
float64 joint6
float64 x
float64 y
float64 z
float64 Roll
float64 Pitch
float64 Yaw



")



(provide :dofbot_info/kinemarics "d4d7066ccc45dfff67e7b0b528d14e9b")


