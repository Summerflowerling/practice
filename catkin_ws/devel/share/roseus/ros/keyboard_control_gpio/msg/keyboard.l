;; Auto-generated. Do not edit!


(when (boundp 'keyboard_control_gpio::keyboard)
  (if (not (find-package "KEYBOARD_CONTROL_GPIO"))
    (make-package "KEYBOARD_CONTROL_GPIO"))
  (shadow 'keyboard (find-package "KEYBOARD_CONTROL_GPIO")))
(unless (find-package "KEYBOARD_CONTROL_GPIO::KEYBOARD")
  (make-package "KEYBOARD_CONTROL_GPIO::KEYBOARD"))

(in-package "ROS")
;;//! \htmlinclude keyboard.msg.html


(defclass keyboard_control_gpio::keyboard
  :super ros::object
  :slots (_word ))

(defmethod keyboard_control_gpio::keyboard
  (:init
   (&key
    ((:word __word) "")
    )
   (send-super :init)
   (setq _word (string __word))
   self)
  (:word
   (&optional __word)
   (if __word (setq _word __word)) _word)
  (:serialization-length
   ()
   (+
    ;; string _word
    4 (length _word)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _word
       (write-long (length _word) s) (princ _word s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _word
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _word (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get keyboard_control_gpio::keyboard :md5sum-) "cf5cbdd7f0c6b9eaa898f882ab6eade6")
(setf (get keyboard_control_gpio::keyboard :datatype-) "keyboard_control_gpio/keyboard")
(setf (get keyboard_control_gpio::keyboard :definition-)
      "string word

")



(provide :keyboard_control_gpio/keyboard "cf5cbdd7f0c6b9eaa898f882ab6eade6")


