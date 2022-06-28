(defpackage #:gamepicker
  (:use :cl)
  (:export :main))

(in-package #:gamepicker)

(defun random-choice (l)
  (elt l (random (length l))))

(defun main ()
  (let ((games (uiop:read-file-lines "games.txt"))
        (switch nil)
        (*random-state* (make-random-state t))
        (prev-choice ""))
    (loop when switch
            return t
          do
             (if (y-or-n-p "New game?")
                 (let ((choice (random-choice games)))
                   (loop until (not (string-equal prev-choice choice))
                         do
                            (setf choice (random-choice games)))
                   (setf prev-choice choice)
                   (format t "=> ~:@(~a~)~%" choice))
                 (setf switch t)))))
