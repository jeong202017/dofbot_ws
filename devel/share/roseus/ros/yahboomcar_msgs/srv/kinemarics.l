;; Auto-generated. Do not edit!


(when (boundp 'yahboomcar_msgs::kinemarics)
  (if (not (find-package "YAHBOOMCAR_MSGS"))
    (make-package "YAHBOOMCAR_MSGS"))
  (shadow 'kinemarics (find-package "YAHBOOMCAR_MSGS")))
(unless (find-package "YAHBOOMCAR_MSGS::KINEMARICS")
  (make-package "YAHBOOMCAR_MSGS::KINEMARICS"))
(unless (find-package "YAHBOOMCAR_MSGS::KINEMARICSREQUEST")
  (make-package "YAHBOOMCAR_MSGS::KINEMARICSREQUEST"))
(unless (find-package "YAHBOOMCAR_MSGS::KINEMARICSRESPONSE")
  (make-package "YAHBOOMCAR_MSGS::KINEMARICSRESPONSE"))

(in-package "ROS")





(defclass yahboomcar_msgs::kinemaricsRequest
  :super ros::object
  :slots (_kin_name _src_pos _src_joints ))

(defmethod yahboomcar_msgs::kinemaricsRequest
  (:init
   (&key
    ((:kin_name __kin_name) "")
    ((:src_pos __src_pos) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:src_joints __src_joints) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _kin_name (string __kin_name))
   (setq _src_pos __src_pos)
   (setq _src_joints __src_joints)
   self)
  (:kin_name
   (&optional __kin_name)
   (if __kin_name (setq _kin_name __kin_name)) _kin_name)
  (:src_pos
   (&optional __src_pos)
   (if __src_pos (setq _src_pos __src_pos)) _src_pos)
  (:src_joints
   (&optional __src_joints)
   (if __src_joints (setq _src_joints __src_joints)) _src_joints)
  (:serialization-length
   ()
   (+
    ;; string _kin_name
    4 (length _kin_name)
    ;; float64[] _src_pos
    (* 8    (length _src_pos)) 4
    ;; float64[] _src_joints
    (* 8    (length _src_joints)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _kin_name
       (write-long (length _kin_name) s) (princ _kin_name s)
     ;; float64[] _src_pos
     (write-long (length _src_pos) s)
     (dotimes (i (length _src_pos))
       (sys::poke (elt _src_pos i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _src_joints
     (write-long (length _src_joints) s)
     (dotimes (i (length _src_joints))
       (sys::poke (elt _src_joints i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _kin_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _kin_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64[] _src_pos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _src_pos (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _src_pos i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _src_joints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _src_joints (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _src_joints i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass yahboomcar_msgs::kinemaricsResponse
  :super ros::object
  :slots (_target_joints _target_pos ))

(defmethod yahboomcar_msgs::kinemaricsResponse
  (:init
   (&key
    ((:target_joints __target_joints) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:target_pos __target_pos) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _target_joints __target_joints)
   (setq _target_pos __target_pos)
   self)
  (:target_joints
   (&optional __target_joints)
   (if __target_joints (setq _target_joints __target_joints)) _target_joints)
  (:target_pos
   (&optional __target_pos)
   (if __target_pos (setq _target_pos __target_pos)) _target_pos)
  (:serialization-length
   ()
   (+
    ;; float64[] _target_joints
    (* 8    (length _target_joints)) 4
    ;; float64[] _target_pos
    (* 8    (length _target_pos)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _target_joints
     (write-long (length _target_joints) s)
     (dotimes (i (length _target_joints))
       (sys::poke (elt _target_joints i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _target_pos
     (write-long (length _target_pos) s)
     (dotimes (i (length _target_pos))
       (sys::poke (elt _target_pos i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _target_joints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _target_joints (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _target_joints i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _target_pos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _target_pos (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _target_pos i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass yahboomcar_msgs::kinemarics
  :super ros::object
  :slots ())

(setf (get yahboomcar_msgs::kinemarics :md5sum-) "b50531ac053c7ba8a5e7dbdab4ee0d01")
(setf (get yahboomcar_msgs::kinemarics :datatype-) "yahboomcar_msgs/kinemarics")
(setf (get yahboomcar_msgs::kinemarics :request) yahboomcar_msgs::kinemaricsRequest)
(setf (get yahboomcar_msgs::kinemarics :response) yahboomcar_msgs::kinemaricsResponse)

(defmethod yahboomcar_msgs::kinemaricsRequest
  (:response () (instance yahboomcar_msgs::kinemaricsResponse :init)))

(setf (get yahboomcar_msgs::kinemaricsRequest :md5sum-) "b50531ac053c7ba8a5e7dbdab4ee0d01")
(setf (get yahboomcar_msgs::kinemaricsRequest :datatype-) "yahboomcar_msgs/kinemaricsRequest")
(setf (get yahboomcar_msgs::kinemaricsRequest :definition-)
      "# request
string  kin_name
float64[] src_pos
float64[] src_joints
---
# response
float64[] target_joints
float64[] target_pos

")

(setf (get yahboomcar_msgs::kinemaricsResponse :md5sum-) "b50531ac053c7ba8a5e7dbdab4ee0d01")
(setf (get yahboomcar_msgs::kinemaricsResponse :datatype-) "yahboomcar_msgs/kinemaricsResponse")
(setf (get yahboomcar_msgs::kinemaricsResponse :definition-)
      "# request
string  kin_name
float64[] src_pos
float64[] src_joints
---
# response
float64[] target_joints
float64[] target_pos

")



(provide :yahboomcar_msgs/kinemarics "b50531ac053c7ba8a5e7dbdab4ee0d01")


