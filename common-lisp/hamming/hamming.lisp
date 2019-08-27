(defpackage #:hamming
  (:use #:cl)
  (:export #:distance))

(in-package #:hamming)

;; (defun xor (p q)
;;     (and (or p q) (not (and p q))))

;; (defun str-to-list (s)
;;   (with-input-from-string (elt s) (list (read elt))))

;; (defun str-to-list (s)
;;   (coerce s 'list))

(defun distance (dna1 dna2)
  "Number of positional differences in two equal length dna strands. 
   A variant based on numbers appears at https://bit.ly/2WDmacB"
  (when (= (length dna1) (length dna2))
    (count nil
           (map 'list #'char= dna1 dna2))))
