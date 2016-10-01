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
  :slots (_label _size _stride _dataOffset _Data ))

(defmethod struct_with_variable_length_vector::imgData
  (:init
   (&key
    ((:label __label) "")
    ((:size __size) 0)
    ((:stride __stride) 0)
    ((:dataOffset __dataOffset) 0)
    ((:Data __Data) (make-array 4 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _label (string __label))
   (setq _size (round __size))
   (setq _stride (round __stride))
   (setq _dataOffset (round __dataOffset))
   (setq _Data __Data)
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
  (:Data
   (&optional __Data)
   (if __Data (setq _Data __Data)) _Data)
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
    ;; int16[4] _Data
    (* 2    4)
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
     ;; int16[4] _Data
     (dotimes (i 4)
       (write-word (elt _Data i) s)
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
   ;; int16[4] _Data
   (dotimes (i (length _Data))
     (setf (elt _Data i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     )
   ;;
   self)
  )

(setf (get struct_with_variable_length_vector::imgData :md5sum-) "f3703bb6d4603050f488eafae4154849")
(setf (get struct_with_variable_length_vector::imgData :datatype-) "struct_with_variable_length_vector/imgData")
(setf (get struct_with_variable_length_vector::imgData :definition-)
      "string label
int16 size
int16 stride
int16 dataOffset
int16[4] Data

")



(provide :struct_with_variable_length_vector/imgData "f3703bb6d4603050f488eafae4154849")


