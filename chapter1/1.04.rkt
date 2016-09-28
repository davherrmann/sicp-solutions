#lang racket

; SICP - exercise 1.4

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

; description of behaviour
; the expression (if (> b 0) + -) returns the function + if b is positive, otherwise the function -
; - case 1: b <= 0
;   result: a - b = a + (-b) = a + |b|
;   in case 1 the positive value of negative b is added to a
; - case 2: b > 0
;   result: a + b = a + |b|
;   in case 2 the positive b is added to a
; effectively, the function adds the absolute value of b to a, which the function name states

; test cases
(a-plus-abs-b 4 5)  ; 4 + |5| = 9
(a-plus-abs-b 4 -5) ; 4 + |-5| = 9