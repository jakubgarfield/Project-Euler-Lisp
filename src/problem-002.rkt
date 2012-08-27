#lang racket
(require rackunit)
(require "problem.rkt")
(provide problem-002)

(define problem-002
  (class* problem (problem-interface)
    (super-new)
    (define/override-final (description)
      "By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.")
    (define/override-final (solve-implementation)
      (fibonacci-sum 1 1 4000000 is-even 0))))

(define (fibonacci-next previous current)
  (+ previous current))

(define (is-even value)
  (eq? (modulo value 2) 0))

(define (fibonacci-sum previous current max condition acc)
  (cond [(> current max) acc]
        [else (fibonacci-sum current (fibonacci-next previous current) max condition (cond [(condition current) (+ acc current)]
                                                                                           [else acc]))]))

(send (new problem-002) print-problem)