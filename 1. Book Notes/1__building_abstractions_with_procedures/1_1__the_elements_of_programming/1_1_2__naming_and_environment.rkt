#lang sicp

; Variable: means to refer to a computational object.
; "define" keyword is used to set a variable.

(define size 2)
size

; Some more examples for the use cases of 'define':
(define pi 3.14159)
(define radius 10)
(* pi (* radius radius))
(define circumference(* 2 pi radius))
circumference

; The interpreter maintains a memory to keep track of the combinations of the symbols to their respective values.
; This memory is called "environment" (global environment to be more precise)