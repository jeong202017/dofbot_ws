; Auto-generated. Do not edit!


(cl:in-package yahboomcar_msgs-srv)


;//! \htmlinclude RobotArmArray-request.msg.html

(cl:defclass <RobotArmArray-request> (roslisp-msg-protocol:ros-message)
  ((apply
    :reader apply
    :initarg :apply
    :type cl:string
    :initform ""))
)

(cl:defclass RobotArmArray-request (<RobotArmArray-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotArmArray-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotArmArray-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yahboomcar_msgs-srv:<RobotArmArray-request> is deprecated: use yahboomcar_msgs-srv:RobotArmArray-request instead.")))

(cl:ensure-generic-function 'apply-val :lambda-list '(m))
(cl:defmethod apply-val ((m <RobotArmArray-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yahboomcar_msgs-srv:apply-val is deprecated.  Use yahboomcar_msgs-srv:apply instead.")
  (apply m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotArmArray-request>) ostream)
  "Serializes a message object of type '<RobotArmArray-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'apply))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'apply))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotArmArray-request>) istream)
  "Deserializes a message object of type '<RobotArmArray-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'apply) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'apply) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotArmArray-request>)))
  "Returns string type for a service object of type '<RobotArmArray-request>"
  "yahboomcar_msgs/RobotArmArrayRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotArmArray-request)))
  "Returns string type for a service object of type 'RobotArmArray-request"
  "yahboomcar_msgs/RobotArmArrayRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotArmArray-request>)))
  "Returns md5sum for a message object of type '<RobotArmArray-request>"
  "22eb2a15e67062ad54355cfa936a9cdb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotArmArray-request)))
  "Returns md5sum for a message object of type 'RobotArmArray-request"
  "22eb2a15e67062ad54355cfa936a9cdb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotArmArray-request>)))
  "Returns full string definition for message of type '<RobotArmArray-request>"
  (cl:format cl:nil "#request~%string apply~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotArmArray-request)))
  "Returns full string definition for message of type 'RobotArmArray-request"
  (cl:format cl:nil "#request~%string apply~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotArmArray-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'apply))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotArmArray-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotArmArray-request
    (cl:cons ':apply (apply msg))
))
;//! \htmlinclude RobotArmArray-response.msg.html

(cl:defclass <RobotArmArray-response> (roslisp-msg-protocol:ros-message)
  ((angles
    :reader angles
    :initarg :angles
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass RobotArmArray-response (<RobotArmArray-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotArmArray-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotArmArray-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yahboomcar_msgs-srv:<RobotArmArray-response> is deprecated: use yahboomcar_msgs-srv:RobotArmArray-response instead.")))

(cl:ensure-generic-function 'angles-val :lambda-list '(m))
(cl:defmethod angles-val ((m <RobotArmArray-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yahboomcar_msgs-srv:angles-val is deprecated.  Use yahboomcar_msgs-srv:angles instead.")
  (angles m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotArmArray-response>) ostream)
  "Serializes a message object of type '<RobotArmArray-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'angles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'angles))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotArmArray-response>) istream)
  "Deserializes a message object of type '<RobotArmArray-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'angles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'angles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotArmArray-response>)))
  "Returns string type for a service object of type '<RobotArmArray-response>"
  "yahboomcar_msgs/RobotArmArrayResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotArmArray-response)))
  "Returns string type for a service object of type 'RobotArmArray-response"
  "yahboomcar_msgs/RobotArmArrayResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotArmArray-response>)))
  "Returns md5sum for a message object of type '<RobotArmArray-response>"
  "22eb2a15e67062ad54355cfa936a9cdb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotArmArray-response)))
  "Returns md5sum for a message object of type 'RobotArmArray-response"
  "22eb2a15e67062ad54355cfa936a9cdb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotArmArray-response>)))
  "Returns full string definition for message of type '<RobotArmArray-response>"
  (cl:format cl:nil "#response~%float64[] angles~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotArmArray-response)))
  "Returns full string definition for message of type 'RobotArmArray-response"
  (cl:format cl:nil "#response~%float64[] angles~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotArmArray-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'angles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotArmArray-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotArmArray-response
    (cl:cons ':angles (angles msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RobotArmArray)))
  'RobotArmArray-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RobotArmArray)))
  'RobotArmArray-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotArmArray)))
  "Returns string type for a service object of type '<RobotArmArray>"
  "yahboomcar_msgs/RobotArmArray")