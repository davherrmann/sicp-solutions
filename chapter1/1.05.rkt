#lang racket

; SICP - exercise 1.5

; Note that calling (p) will always lead to an infinite recursion
; - applicative-order evaluation: p is called when the parameters
;   are passed to (test x y) -> infinite recursion
; - normal-order evaluation: p is neither called when the parameters
;   are passed nor inside (test x y) -> calling (test 0 (p)) returns 0