(defpackage #:build
  (:use :cl))

(in-package #:build)
(load "gamepicker.lisp")

(defparameter *exec-name* "gamepicker")
(if (string-equal (software-type) "Win32") (setf *exec-name* "gamepicker.exe"))

(sb-ext:save-lisp-and-die *exec-name* :toplevel #'gamepicker:main :executable t)
