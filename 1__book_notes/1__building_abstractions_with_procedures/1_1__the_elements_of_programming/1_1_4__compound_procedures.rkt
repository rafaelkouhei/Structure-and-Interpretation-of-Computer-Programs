#lang sicp

; Procedure definition is the means to name a compound operation and treat them as a unit.
; General form of a compound procedure:
; (define (<name> <formal parameters>) (body))
; name - symbol to be associated with the procedure definition in the environment.
; formal parameters - names used within the body of the procedure to refer to the corresponding arguments of the procedure.
; body - an expression that will yield the value of the procedure application when the formal parameters are replaced by the actual arguments to which the procedure is applied.

(define (square x) (* x x))

(square 21)
; 441
(square (+ 2 5))
; 49
(square (square 3))
; 81

; New compound procedures can be defined using the already existing procedure.
(define (sum-of-squares x y)
  (+ (square x) (square y)))
  
(sum-of-squares 3 4)
; 25

(define (f a)
  (sum-of-squares (+ a 1) (* a 2)))

(f 5)
;136

; Compound procedures as used in the same way as primitive procedures.
; In fact, there's no way to tell whether "square" is a built-in operation such as + or * without looking at its definition.