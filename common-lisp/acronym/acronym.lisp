(in-package #:cl-user)
(defpackage #:acronym
  (:use #:common-lisp)
  (:export #:acronym))

(ql:quickload "cl-ppcre")
(in-package #:acronym)


(defun first-letter (s)
  (string-upcase (subseq s 0 1)))

(defun acronym (s)
  (format nil "~{~a~}" (mapcar #'first-letter (cl-ppcre:split "(\\s+)|(-)" s))))
