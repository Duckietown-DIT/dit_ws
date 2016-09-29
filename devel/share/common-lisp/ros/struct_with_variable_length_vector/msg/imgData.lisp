; Auto-generated. Do not edit!


(cl:in-package struct_with_variable_length_vector-msg)


;//! \htmlinclude imgData.msg.html

(cl:defclass <imgData> (roslisp-msg-protocol:ros-message)
  ((upperLeft
    :reader upperLeft
    :initarg :upperLeft
    :type cl:integer
    :initform 0)
   (lowerRight
    :reader lowerRight
    :initarg :lowerRight
    :type cl:integer
    :initform 0)
   (color
    :reader color
    :initarg :color
    :type cl:string
    :initform "")
   (cameraID
    :reader cameraID
    :initarg :cameraID
    :type cl:string
    :initform "")
   (label
    :reader label
    :initarg :label
    :type cl:string
    :initform "")
   (size
    :reader size
    :initarg :size
    :type cl:fixnum
    :initform 0)
   (stride
    :reader stride
    :initarg :stride
    :type cl:fixnum
    :initform 0)
   (dataOffset
    :reader dataOffset
    :initarg :dataOffset
    :type cl:fixnum
    :initform 0)
   (Data
    :reader Data
    :initarg :Data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass imgData (<imgData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <imgData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'imgData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name struct_with_variable_length_vector-msg:<imgData> is deprecated: use struct_with_variable_length_vector-msg:imgData instead.")))

(cl:ensure-generic-function 'upperLeft-val :lambda-list '(m))
(cl:defmethod upperLeft-val ((m <imgData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader struct_with_variable_length_vector-msg:upperLeft-val is deprecated.  Use struct_with_variable_length_vector-msg:upperLeft instead.")
  (upperLeft m))

(cl:ensure-generic-function 'lowerRight-val :lambda-list '(m))
(cl:defmethod lowerRight-val ((m <imgData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader struct_with_variable_length_vector-msg:lowerRight-val is deprecated.  Use struct_with_variable_length_vector-msg:lowerRight instead.")
  (lowerRight m))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <imgData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader struct_with_variable_length_vector-msg:color-val is deprecated.  Use struct_with_variable_length_vector-msg:color instead.")
  (color m))

(cl:ensure-generic-function 'cameraID-val :lambda-list '(m))
(cl:defmethod cameraID-val ((m <imgData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader struct_with_variable_length_vector-msg:cameraID-val is deprecated.  Use struct_with_variable_length_vector-msg:cameraID instead.")
  (cameraID m))

(cl:ensure-generic-function 'label-val :lambda-list '(m))
(cl:defmethod label-val ((m <imgData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader struct_with_variable_length_vector-msg:label-val is deprecated.  Use struct_with_variable_length_vector-msg:label instead.")
  (label m))

(cl:ensure-generic-function 'size-val :lambda-list '(m))
(cl:defmethod size-val ((m <imgData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader struct_with_variable_length_vector-msg:size-val is deprecated.  Use struct_with_variable_length_vector-msg:size instead.")
  (size m))

(cl:ensure-generic-function 'stride-val :lambda-list '(m))
(cl:defmethod stride-val ((m <imgData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader struct_with_variable_length_vector-msg:stride-val is deprecated.  Use struct_with_variable_length_vector-msg:stride instead.")
  (stride m))

(cl:ensure-generic-function 'dataOffset-val :lambda-list '(m))
(cl:defmethod dataOffset-val ((m <imgData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader struct_with_variable_length_vector-msg:dataOffset-val is deprecated.  Use struct_with_variable_length_vector-msg:dataOffset instead.")
  (dataOffset m))

(cl:ensure-generic-function 'Data-val :lambda-list '(m))
(cl:defmethod Data-val ((m <imgData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader struct_with_variable_length_vector-msg:Data-val is deprecated.  Use struct_with_variable_length_vector-msg:Data instead.")
  (Data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <imgData>) ostream)
  "Serializes a message object of type '<imgData>"
  (cl:let* ((signed (cl:slot-value msg 'upperLeft)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'lowerRight)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'color))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'color))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'cameraID))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'cameraID))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'label))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'label))
  (cl:let* ((signed (cl:slot-value msg 'size)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'stride)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'dataOffset)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'Data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    ))
   (cl:slot-value msg 'Data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <imgData>) istream)
  "Deserializes a message object of type '<imgData>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'upperLeft) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lowerRight) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'color) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'color) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cameraID) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'cameraID) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'label) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'label) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'size) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stride) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dataOffset) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'Data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'Data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<imgData>)))
  "Returns string type for a message object of type '<imgData>"
  "struct_with_variable_length_vector/imgData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'imgData)))
  "Returns string type for a message object of type 'imgData"
  "struct_with_variable_length_vector/imgData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<imgData>)))
  "Returns md5sum for a message object of type '<imgData>"
  "7ff2b0479b82d51d3a7e63d61ec689a2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'imgData)))
  "Returns md5sum for a message object of type 'imgData"
  "7ff2b0479b82d51d3a7e63d61ec689a2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<imgData>)))
  "Returns full string definition for message of type '<imgData>"
  (cl:format cl:nil "int32 upperLeft~%int32 lowerRight~%string color~%string cameraID~%string label~%int16 size~%int16 stride~%int16 dataOffset~%int16[] Data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'imgData)))
  "Returns full string definition for message of type 'imgData"
  (cl:format cl:nil "int32 upperLeft~%int32 lowerRight~%string color~%string cameraID~%string label~%int16 size~%int16 stride~%int16 dataOffset~%int16[] Data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <imgData>))
  (cl:+ 0
     4
     4
     4 (cl:length (cl:slot-value msg 'color))
     4 (cl:length (cl:slot-value msg 'cameraID))
     4 (cl:length (cl:slot-value msg 'label))
     2
     2
     2
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'Data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <imgData>))
  "Converts a ROS message object to a list"
  (cl:list 'imgData
    (cl:cons ':upperLeft (upperLeft msg))
    (cl:cons ':lowerRight (lowerRight msg))
    (cl:cons ':color (color msg))
    (cl:cons ':cameraID (cameraID msg))
    (cl:cons ':label (label msg))
    (cl:cons ':size (size msg))
    (cl:cons ':stride (stride msg))
    (cl:cons ':dataOffset (dataOffset msg))
    (cl:cons ':Data (Data msg))
))
