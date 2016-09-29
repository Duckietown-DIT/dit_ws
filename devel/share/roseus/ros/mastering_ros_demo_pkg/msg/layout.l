;; Auto-generated. Do not edit!


(when (boundp 'mastering_ros_demo_pkg::layout)
  (if (not (find-package "MASTERING_ROS_DEMO_PKG"))
    (make-package "MASTERING_ROS_DEMO_PKG"))
  (shadow 'layout (find-package "MASTERING_ROS_DEMO_PKG")))
(unless (find-package "MASTERING_ROS_DEMO_PKG::LAYOUT")
  (make-package "MASTERING_ROS_DEMO_PKG::LAYOUT"))

(in-package "ROS")
;;//! \htmlinclude layout.msg.html


(defclass mastering_ros_demo_pkg::layout
  :super ros::object
  :slots (_label _size _stride _dataOffset _dim _data ))

(defmethod mastering_ros_demo_pkg::layout
  (:init
   (&key
    ((:label __label) "")
    ((:size __size) 0)
    ((:stride __stride) 0)
    ((:dataOffset __dataOffset) 0)
    ((:dim __dim) (make-array 0 :initial-element 0 :element-type :integer))
    ((:data __data) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _label (string __label))
   (setq _size (round __size))
   (setq _stride (round __stride))
   (setq _dataOffset (round __dataOffset))
   (setq _dim __dim)
   (setq _data __data)
   self)
  (:label
   (&optional __label)
   (if __label (setq _label __label)) _label)
  (:size
   (&optional __size)
   (if __size (setq _size __size)) _size)
  (:stride
   (&optional __stride)
   (if __stride (setq _stride __stride)) _stride)
  (:dataOffset
   (&optional __dataOffset)
   (if __dataOffset (setq _dataOffset __dataOffset)) _dataOffset)
  (:dim
   (&optional __dim)
   (if __dim (setq _dim __dim)) _dim)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; string _label
    4 (length _label)
    ;; int16 _size
    2
    ;; int16 _stride
    2
    ;; int16 _dataOffset
    2
    ;; int16[] _dim
    (* 2    (length _dim)) 4
    ;; int16[] _data
    (* 2    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _label
       (write-long (length _label) s) (princ _label s)
     ;; int16 _size
       (write-word _size s)
     ;; int16 _stride
       (write-word _stride s)
     ;; int16 _dataOffset
       (write-word _dataOffset s)
     ;; int16[] _dim
     (write-long (length _dim) s)
     (dotimes (i (length _dim))
       (write-word (elt _dim i) s)
       )
     ;; int16[] _data
     (write-long (length _data) s)
     (dotimes (i (length _data))
       (write-word (elt _data i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _label
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _label (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int16 _size
     (setq _size (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _stride
     (setq _stride (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _dataOffset
     (setq _dataOffset (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16[] _dim
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _dim (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _dim i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; int16[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _data i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;;
   self)
  )

(setf (get mastering_ros_demo_pkg::layout :md5sum-) "31ed65118d857da3e3032468c31d1183")
(setf (get mastering_ros_demo_pkg::layout :datatype-) "mastering_ros_demo_pkg/layout")
(setf (get mastering_ros_demo_pkg::layout :definition-)
      "string label
int16 size
int16 stride
int16 dataOffset
int16[] dim
int16[] data


")



(provide :mastering_ros_demo_pkg/layout "31ed65118d857da3e3032468c31d1183")


