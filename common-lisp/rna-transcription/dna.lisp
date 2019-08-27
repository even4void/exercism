(in-package #:cl-user)
(defpackage #:dna
  (:use #:cl)
  (:export #:to-rna))
(in-package #:dna)

(defun list-to-string (lst)
  (format nil "~{~A~}" lst))

(defparameter drna-mapping
  '((#\C . #\G) (#\G . #\C) (#\A . #\U) (#\T . #\A)))

(defun to-rna (str)
  "Transcribe a string representing DNA nucleotides to RNA."
  (if (every #'(lambda (c) (find c (mapcar 'car drna-mapping)))
             str)
      (list-to-string
       (map 'list #'(lambda (c) (cdr (assoc c drna-mapping)))
            str))
      (signal 'error)))
