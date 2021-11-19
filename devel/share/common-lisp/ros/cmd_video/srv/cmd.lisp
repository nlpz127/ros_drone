; Auto-generated. Do not edit!


(cl:in-package cmd_video-srv)


;//! \htmlinclude cmd-request.msg.html

(cl:defclass <cmd-request> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (z
    :reader z
    :initarg :z
    :type cl:float
    :initform 0.0)
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0))
)

(cl:defclass cmd-request (<cmd-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cmd-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cmd-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cmd_video-srv:<cmd-request> is deprecated: use cmd_video-srv:cmd-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <cmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cmd_video-srv:x-val is deprecated.  Use cmd_video-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <cmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cmd_video-srv:y-val is deprecated.  Use cmd_video-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <cmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cmd_video-srv:z-val is deprecated.  Use cmd_video-srv:z instead.")
  (z m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <cmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cmd_video-srv:yaw-val is deprecated.  Use cmd_video-srv:yaw instead.")
  (yaw m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cmd-request>) ostream)
  "Serializes a message object of type '<cmd-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cmd-request>) istream)
  "Deserializes a message object of type '<cmd-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cmd-request>)))
  "Returns string type for a service object of type '<cmd-request>"
  "cmd_video/cmdRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cmd-request)))
  "Returns string type for a service object of type 'cmd-request"
  "cmd_video/cmdRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cmd-request>)))
  "Returns md5sum for a message object of type '<cmd-request>"
  "fb3b298255840e179b7df41870a2c158")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cmd-request)))
  "Returns md5sum for a message object of type 'cmd-request"
  "fb3b298255840e179b7df41870a2c158")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cmd-request>)))
  "Returns full string definition for message of type '<cmd-request>"
  (cl:format cl:nil "float32 x~%float32 y~%float32 z~%float32 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cmd-request)))
  "Returns full string definition for message of type 'cmd-request"
  (cl:format cl:nil "float32 x~%float32 y~%float32 z~%float32 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cmd-request>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cmd-request>))
  "Converts a ROS message object to a list"
  (cl:list 'cmd-request
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
    (cl:cons ':yaw (yaw msg))
))
;//! \htmlinclude cmd-response.msg.html

(cl:defclass <cmd-response> (roslisp-msg-protocol:ros-message)
  ((feedback
    :reader feedback
    :initarg :feedback
    :type cl:integer
    :initform 0))
)

(cl:defclass cmd-response (<cmd-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cmd-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cmd-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cmd_video-srv:<cmd-response> is deprecated: use cmd_video-srv:cmd-response instead.")))

(cl:ensure-generic-function 'feedback-val :lambda-list '(m))
(cl:defmethod feedback-val ((m <cmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cmd_video-srv:feedback-val is deprecated.  Use cmd_video-srv:feedback instead.")
  (feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cmd-response>) ostream)
  "Serializes a message object of type '<cmd-response>"
  (cl:let* ((signed (cl:slot-value msg 'feedback)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cmd-response>) istream)
  "Deserializes a message object of type '<cmd-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'feedback) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cmd-response>)))
  "Returns string type for a service object of type '<cmd-response>"
  "cmd_video/cmdResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cmd-response)))
  "Returns string type for a service object of type 'cmd-response"
  "cmd_video/cmdResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cmd-response>)))
  "Returns md5sum for a message object of type '<cmd-response>"
  "fb3b298255840e179b7df41870a2c158")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cmd-response)))
  "Returns md5sum for a message object of type 'cmd-response"
  "fb3b298255840e179b7df41870a2c158")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cmd-response>)))
  "Returns full string definition for message of type '<cmd-response>"
  (cl:format cl:nil "int32 feedback~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cmd-response)))
  "Returns full string definition for message of type 'cmd-response"
  (cl:format cl:nil "int32 feedback~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cmd-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cmd-response>))
  "Converts a ROS message object to a list"
  (cl:list 'cmd-response
    (cl:cons ':feedback (feedback msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'cmd)))
  'cmd-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'cmd)))
  'cmd-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cmd)))
  "Returns string type for a service object of type '<cmd>"
  "cmd_video/cmd")