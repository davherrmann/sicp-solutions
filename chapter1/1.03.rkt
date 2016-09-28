#lang racket

; SICP - exercise 1.3

; helper functions
(define (square x) (* x x))
(define (min x y) (if (< x y) x y))

; implementation
(define (sum-of-squares-of-two-larger-numbers x y z)
  (+ (square x)
     (square y)
     (square z)
     (- (square (min (min x y) z)))))

; test cases
(sum-of-squares-of-two-larger-numbers 2 4 3) ; 25
(sum-of-squares-of-two-larger-numbers 2 1 0) ; 5