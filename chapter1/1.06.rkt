#lang racket

; SICP - exercise 1.6

; Note that (new-if ...) is a function which has the else-clause as one parameter.
; When calling (new-if ...) in an applicative-order-interpreter, the else-clause
; parameter is evaluated immediately, which leads to an infinite recursion in
; (sqrt-iter ...).