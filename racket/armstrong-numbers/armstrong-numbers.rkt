#lang racket

(provide armstrong-number?)

(define (digits x)
  (if (zero? x)
      null
      (cons (remainder x 10)
            (digits (quotient x 10)))))

(define (armstrong-number? n)
  (let* ([d (digits n)]
         [l (length d)])
    (= n
       (for/sum ([a d])
         (expt a l)))))
