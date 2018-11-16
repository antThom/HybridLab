;; Auto-generated. Do not edit!


(when (boundp 'comms::Num)
  (if (not (find-package "COMMS"))
    (make-package "COMMS"))
  (shadow 'Num (find-package "COMMS")))
(unless (find-package "COMMS::NUM")
  (make-package "COMMS::NUM"))

(in-package "ROS")
;;//! \htmlinclude Num.msg.html


(defclass comms::Num
  :super ros::object
  :slots (_x ))

(defmethod comms::Num
  (:init
   (&key
    ((:x __x) 0)
    )
   (send-super :init)
   (setq _x (round __x))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:serialization-length
   ()
   (+
    ;; int16 _x
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _x
       (write-word _x s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _x
     (setq _x (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get comms::Num :md5sum-) "9470b35d49b33d38ac38411578bdbbce")
(setf (get comms::Num :datatype-) "comms/Num")
(setf (get comms::Num :definition-)
      "int16 x
")



(provide :comms/Num "9470b35d49b33d38ac38411578bdbbce")


