;; Auto-generated. Do not edit!


(when (boundp 'yahboomcar_msgs::RobotArmArray)
  (if (not (find-package "YAHBOOMCAR_MSGS"))
    (make-package "YAHBOOMCAR_MSGS"))
  (shadow 'RobotArmArray (find-package "YAHBOOMCAR_MSGS")))
(unless (find-package "YAHBOOMCAR_MSGS::ROBOTARMARRAY")
  (make-package "YAHBOOMCAR_MSGS::ROBOTARMARRAY"))
(unless (find-package "YAHBOOMCAR_MSGS::ROBOTARMARRAYREQUEST")
  (make-package "YAHBOOMCAR_MSGS::ROBOTARMARRAYREQUEST"))
(unless (find-package "YAHBOOMCAR_MSGS::ROBOTARMARRAYRESPONSE")
  (make-package "YAHBOOMCAR_MSGS::ROBOTARMARRAYRESPONSE"))

(in-package "ROS")





(defclass yahboomcar_msgs::RobotArmArrayRequest
  :super ros::object
  :slots (_apply ))

(defmethod yahboomcar_msgs::RobotArmArrayRequest
  (:init
   (&key
    ((:apply __apply) "")
    )
   (send-super :init)
   (setq _apply (string __apply))
   self)
  (:apply
   (&optional __apply)
   (if __apply (setq _apply __apply)) _apply)
  (:serialization-length
   ()
   (+
    ;; string _apply
    4 (length _apply)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _apply
       (write-long (length _apply) s) (princ _apply s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _apply
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _apply (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass yahboomcar_msgs::RobotArmArrayResponse
  :super ros::object
  :slots (_angles ))

(defmethod yahboomcar_msgs::RobotArmArrayResponse
  (:init
   (&key
    ((:angles __angles) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _angles __angles)
   self)
  (:angles
   (&optional __angles)
   (if __angles (setq _angles __angles)) _angles)
  (:serialization-length
   ()
   (+
    ;; float64[] _angles
    (* 8    (length _angles)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _angles
     (write-long (length _angles) s)
     (dotimes (i (length _angles))
       (sys::poke (elt _angles i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _angles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _angles (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _angles i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass yahboomcar_msgs::RobotArmArray
  :super ros::object
  :slots ())

(setf (get yahboomcar_msgs::RobotArmArray :md5sum-) "22eb2a15e67062ad54355cfa936a9cdb")
(setf (get yahboomcar_msgs::RobotArmArray :datatype-) "yahboomcar_msgs/RobotArmArray")
(setf (get yahboomcar_msgs::RobotArmArray :request) yahboomcar_msgs::RobotArmArrayRequest)
(setf (get yahboomcar_msgs::RobotArmArray :response) yahboomcar_msgs::RobotArmArrayResponse)

(defmethod yahboomcar_msgs::RobotArmArrayRequest
  (:response () (instance yahboomcar_msgs::RobotArmArrayResponse :init)))

(setf (get yahboomcar_msgs::RobotArmArrayRequest :md5sum-) "22eb2a15e67062ad54355cfa936a9cdb")
(setf (get yahboomcar_msgs::RobotArmArrayRequest :datatype-) "yahboomcar_msgs/RobotArmArrayRequest")
(setf (get yahboomcar_msgs::RobotArmArrayRequest :definition-)
      "#request
string apply
---
#response
float64[] angles

")

(setf (get yahboomcar_msgs::RobotArmArrayResponse :md5sum-) "22eb2a15e67062ad54355cfa936a9cdb")
(setf (get yahboomcar_msgs::RobotArmArrayResponse :datatype-) "yahboomcar_msgs/RobotArmArrayResponse")
(setf (get yahboomcar_msgs::RobotArmArrayResponse :definition-)
      "#request
string apply
---
#response
float64[] angles

")



(provide :yahboomcar_msgs/RobotArmArray "22eb2a15e67062ad54355cfa936a9cdb")


