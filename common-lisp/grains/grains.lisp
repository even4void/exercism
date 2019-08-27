(in-package #:cl-user)
(defpackage #:grains
  (:use #:cl)
  (:export :square :total))
(in-package #:grains)

(defun power (n m)
   (reduce #'* (loop for x below n collect m)))

(defun square (n)
  (power (- n 1) 2))

(defun total ()
  (- (power 64 2) 1))
