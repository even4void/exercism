#lang racket

(provide sum-of-squares square-of-sum difference)

(define (sum-of-squares n)
  (for/sum ([x (in-range (add1 n))]) (sqr x)))

(define (square-of-sum n)
  (sqr (for/sum ([x (in-range (add1 n))]) x)))

(define (difference n)
    (- (square-of-sum n) (sum-of-squares n)))
