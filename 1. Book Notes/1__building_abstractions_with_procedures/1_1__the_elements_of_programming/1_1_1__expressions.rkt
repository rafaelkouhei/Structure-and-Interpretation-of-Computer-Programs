#lang sicp

; The core idea of programming is combining simple ideas into compound ones to build more complex structures
; 1: primitive expressions - which represent the simplest entities the language is concerned with
; 2: means of combination - by which compound elements are built from simpler ones
; 3: means of abstraction - by which compound elements can be named and manipulated as units

; Primitive Data
486

; Primitive Procedures 
(+ 137 349)
(- 1000 334)
(* 5 99)
(/ 10 5)
(+ 2.7 10)

; Prefix notation - operator to the leftmost and operands
; Advantage 1: compose procedures with an arbitrary number of arguments with no ambiguity, like the following:
(+ 21 35 12 7)
(* 25 4 12)
; Advantage 2: allows nesting combinations of procedures:
(+ (* 3 5) (- 10 6))

; The interpreter can evaluate as many nested combinations as possible (theoretically).
; But as soon as the combinations grow, it becomes hard to us humans to understand.
; To avoid this, we use pretty-printing (operands should align vertically) as follows:
(+ (* 3
      (+ (* 2 4)
         (+ 3 5)))
   (+ (- 10 7)
      6))