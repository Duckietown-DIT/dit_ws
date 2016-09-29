;; Auto-generated. Do not edit!


(when (boundp 'struct_with_variable_length_vector::imgData)
  (if (not (find-package "STRUCT_WITH_VARIABLE_LENGTH_VECTOR"))
    (make-package "STRUCT_WITH_VARIABLE_LENGTH_VECTOR"))
  (shadow 'imgData (find-package "STRUCT_WITH_VARIABLE_LENGTH_VECTOR")))
(unless (find-package "STRUCT_WITH_VARIABLE_LENGTH_VECTOR::IMGDATA")
  (make-package "STRUCT_WITH_VARIABLE_LENGTH_VECTOR::IMGDATA"))

(in-package "ROS")
;;//! \htmlinclude imgData.msg.html


(defclass struct_with_variable_length_vector::imgData
  :super ros::object
  :slots (_upperLeft _lowerRight _color _cameraID _label _size _stride _dataOffset _Data ))

(defmethod struct_with_variable_length_vector::imgData
  (:init
   (&key
    ((:upperLeft __upperLeft) 0)
    ((:lowerRight __lowerRight) 0)
    ((:color __color) "")
    ((:cameraID __cameraID) "")
    ((:label __label) "")
    ((:size __size) 0)
    ((:stride __stride) 0)
    ((:dataOffset __dataOffset) 0)
    ((:Data __Data) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _upperLeft (round __upperLeft))
   (setq _lowerRight (round __lowerRight))
   (setq _color (string __color))
   (setq _cameraID (string __cameraID))
   (setq _label (string __label))
   (setq _size (round __size))
   (setq _stride (round __stride))
   (setq _dataOffset (round __dataOffset))
   (setq _Data __Data)
   self)
  (:upperLeft
   (&optional __upperLeft)
   (if __upperLeft (setq _upperLeft __upperLeft)) _upperLeft)
  (:lowerRight
   (&optional __lowerRight)
   (if __lowerRight (setq _lowerRight __lowerRight)) _lowerRight)
  (:color
   (&optional __color)
   (if __color (setq _color __color)) _color)
  (:cameraID
   (&optional __cameraID)
   (if __cameraID (setq _cameraID __cameraID)) _cameraID)
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
  (:Data
   (&optional __Data)
   (if __Data (setq _Data __Data)) _Data)
  (:serialization-length
   ()
   (+
    ;; int32 _upperLeft
    4
    ;; int32 _lowerRight
    4
    ;; string _color
    4 (length _color)
    ;; string _cameraID
    4 (length _cameraID)
    ;; string _label
    4 (length _label)
    ;; int16 _size
    2
    ;; int16 _stride
    2
    ;; int16 _dataOffset
    2
    ;; int16[] _Data
    (* 2    (length _Data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _upperLeft
       (write-long _upperLeft s)
     ;; int32 _lowerRight
       (write-long _lowerRight s)
     ;; string _color
       (write-long (length _color) s) (princ _color s)
     ;; string _cameraID
       (write-long (length _cameraID) s) (princ _cameraID s)
     ;; string _label
       (write-long (length _label) s) (princ _label s)
     ;; int16 _size
       (write-word _size s)
     ;; int16 _stride
       (write-word _stride s)
     ;; int16 _dataOffset
       (write-word _dataOffset s)
     ;; int16[] _Data
     (write-long (length _Data) s)
     (dotimes (i (length _Data))
       (write-word (elt _Data i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _upperLeft
     (setq _upperLeft (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _lowerRight
     (setq _lowerRight (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _color
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _color (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _cameraID
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _cameraID (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _label
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _label (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int16 _size
     (setq _size (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _stride
     (setq _stride (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _dataOffset
     (setq _dataOffset (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16[] _Data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _Data (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _Data i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;;
   self)
  )

(setf (get struct_with_variable_length_vector::imgData :md5sum-) "7ff2b0479b82d51d3a7e63d61ec689a2")
(setf (get struct_with_variable_length_vector::imgData :datatype-) "struct_with_variable_length_vector/imgData")
(setf (get struct_with_variable_length_vector::imgData :definition-)
      "int32 upperLeft
int32 lowerRight
string color
string cameraID
string label
int16 size
int16 stride
int16 dataOffset
int16[] Data

")



(provide :struct_with_variable_length_vector/imgData "7ff2b0479b82d51d3a7e63d61ec689a2")


