#lang sicp

; The natural way of representing hierarchical structures is by trees.
; And the mean for traversing it and evaluating its elements is recursion.
; The following procedure is represented as a tree:

(* (+ 2 (* 4 6))
   (+ 3 5 7))

;          390
;           |
;   ------------------------------
;   |       |                    |
;   *      26                   15
;           |                    |
;      -----------        ----------------
;      |    |    |        |    |    |    |
;      +    2   24        +    3    5    7
;                |
;           -----------
;           |    |    |
;           *    4    6

; The act of combining the values upwards (in the tree stucture in the book) is a general kind of a process called "tree accumulation".
; In recursion, eventually it will reach not compound, but primitive entity like numerals, built-in operators and variables.
; These are the "base cases" for recursion.
; One important concept in this context is about the environment. The environment is responsible for giving "meaning" for the symbols in the program.
; Without it, some simple procedures such as (+ x 1) would be meaningless, since there's no means to evaluate the value associated with "x" or even the symbol "+" for addition.
; Although, the evaluation process does not support "define", that is, (define x 3) is not handled by evaluation.
; Special Form is the name of exceptions that have their own evaluation rule.