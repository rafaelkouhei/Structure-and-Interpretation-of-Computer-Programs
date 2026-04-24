#lang sicp

; In the Section 1.1.3, it was told how the interpreter evaluates combinations (tree-like structure).
; This applies for evaluating compound procedures as well.
; When evaluating compound procedures, it replaces the defined parameters with the provided arguments.
; For example, let's take a look at the evaluation of the combination (f 5)

(define (square x) (* x x))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(define (f a)
  (sum-of-squares (+ a 1) (* a 2)))

(f 5)

; In this case, the body of f is:
; (sum-of-squares (+ a 1) (* a 2))

; Replace the formal parameter by argument (a -> 5):
; (sum-of-squares (+ 5 1) (* 5 2))

; In order to apply sum-of-squares operator, it must evaluate (+ 5 1) and (* 5 2) first.
; So, it becomes (sum-of-squares 6 10) respectively and sum-of-squares body is now:
; (+ (square 6) (square 10))

; Evaluating square, the expression is reduced to:
; (+ (* 6 6) (* 10 10))

; And then:
; (+ 36 100)
; 136

; The order would be:
; (f 5)
;   |
;   V
; (sum-of-squares (+ a 1) (* a 2))
;   |
;   V
; (sum-of-squares (+ 5 1) (* 5 2))
;   |
;   V
; (sum-of-squares 6 10)
;   |
;   V
; (+ (square 6) (square 10))
;   |
;   V
; (+ (* 6 6) (* 10 10))
;   |
;   V
; (+ 36 100)
;   |
;   V
; 136

; This process is called Substitution Model.
; Though, this is just a tool to reason about procedure application.
; The interpreter itself does not work like the above.
; In the later chapters, more sophisticated and refined models will be presented.

; Applicative Order versus Normal Order
; The evaluation presented (given in Section 1.1.3) is called Applicative Order.
; It evaluates operators and operands and apply the procedure to their result.
; In contrast, Normal Order Evaluation only evaluates after the remaining procedures are all primitives.
; It "fully expands and then reduce", as it can be seen below:

; (sum-of-squares (+ 5 1) (* 5 2))
;   |
;   V
; (+ (square(+ 5 1)) (square(* 5 2)))
;   |
;   V
; (+ (* (+ 5 1) (+ 5 1)) (* (* 5 2) (* 5 2)))
;   |
;   V
; (+ (* 6 6) (* 10 10))
;   |
;   V
; (+ (36) (100))
;   |
;   V
; 136

; Lisp uses Applicative Order Evaluation due to its higher efficiency compared to Normal Order.
; In the above example, Normal Order Evaluation evaluates twice the same procedure, (+ 5 1) and (* 5 2).
; Also, when dealing with procedures that cannot be handled with substitution model, Normal Order evaluation becomes complicated.