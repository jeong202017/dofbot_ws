;; Auto-generated. Do not edit!


(when (boundp 'yahboomcar_msgs::ArmJoint)
  (if (not (find-package "YAHBOOMCAR_MSGS"))
    (make-package "YAHBOOMCAR_MSGS"))
  (shadow 'ArmJoint (find-package "YAHBOOMCAR_MSGS")))
(unless (find-package "YAHBOOMCAR_MSGS::ARMJOINT")
  (make-package "YAHBOOMCAR_MSGS::ARMJOINT"))

(in-package "ROS")
;;//! \htmlinclude ArmJoint.msg.html


(defclass yahboomcar_msgs::ArmJoint
  :super ros::object
  :slots (_id _run_time _angle _joints ))

(defmethod yahboomcar_msgs::ArmJoint
  (:init
   (&key
    ((:id __id) 0)
    ((:run_time __run_time) 0)
    ((:angle __angle) 0.0)
    ((:joints __joints) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _run_time (round __run_time))
   (setq _angle (float __angle))
   (setq _joints __joints)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:run_time
   (&optional __run_time)
   (if __run_time (setq _run_time __run_time)) _run_time)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:joints
   (&optional __joints)
   (if __joints (setq _joints __joints)) _joints)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; int32 _run_time
    4
    ;; float32 _angle
    4
    ;; float32[] _joints
    (* 4    (length _joints)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; int32 _run_time
       (write-long _run_time s)
     ;; float32 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[] _joints
     (write-long (length _joints) s)
     (dotimes (i (length _joints))
       (sys::poke (elt _joints i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _run_time
     (setq _run_time (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _angle
     (setq _angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[] _joints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joints (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joints i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get yahboomcar_msgs::ArmJoint :md5sum-) "a1cefc25e3f9baafff8b51ba13bc770b")
(setf (get yahboomcar_msgs::ArmJoint :datatype-) "yahboomcar_msgs/ArmJoint")
(setf (get yahboomcar_msgs::ArmJoint :definition-)
      "int32 id
int32 run_time
float32 angle
float32[] joints

")



(provide :yahboomcar_msgs/ArmJoint "a1cefc25e3f9baafff8b51ba13bc770b")


