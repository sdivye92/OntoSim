; Auto-generated. Do not edit!


(cl:in-package ros_nodes-msg)


;//! \htmlinclude Communication.msg.html

(cl:defclass <Communication> (roslisp-msg-protocol:ros-message)
  ((agentid
    :reader agentid
    :initarg :agentid
    :type cl:string
    :initform "")
   (uri
    :reader uri
    :initarg :uri
    :type cl:string
    :initform ""))
)

(cl:defclass Communication (<Communication>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Communication>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Communication)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_nodes-msg:<Communication> is deprecated: use ros_nodes-msg:Communication instead.")))

(cl:ensure-generic-function 'agentid-val :lambda-list '(m))
(cl:defmethod agentid-val ((m <Communication>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_nodes-msg:agentid-val is deprecated.  Use ros_nodes-msg:agentid instead.")
  (agentid m))

(cl:ensure-generic-function 'uri-val :lambda-list '(m))
(cl:defmethod uri-val ((m <Communication>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_nodes-msg:uri-val is deprecated.  Use ros_nodes-msg:uri instead.")
  (uri m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Communication>) ostream)
  "Serializes a message object of type '<Communication>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'agentid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'agentid))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'uri))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'uri))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Communication>) istream)
  "Deserializes a message object of type '<Communication>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'agentid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'agentid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'uri) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'uri) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Communication>)))
  "Returns string type for a message object of type '<Communication>"
  "ros_nodes/Communication")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Communication)))
  "Returns string type for a message object of type 'Communication"
  "ros_nodes/Communication")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Communication>)))
  "Returns md5sum for a message object of type '<Communication>"
  "c03c71c688e6039580a604205a7b40fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Communication)))
  "Returns md5sum for a message object of type 'Communication"
  "c03c71c688e6039580a604205a7b40fb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Communication>)))
  "Returns full string definition for message of type '<Communication>"
  (cl:format cl:nil "string agentid~%string uri~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Communication)))
  "Returns full string definition for message of type 'Communication"
  (cl:format cl:nil "string agentid~%string uri~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Communication>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'agentid))
     4 (cl:length (cl:slot-value msg 'uri))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Communication>))
  "Converts a ROS message object to a list"
  (cl:list 'Communication
    (cl:cons ':agentid (agentid msg))
    (cl:cons ':uri (uri msg))
))
