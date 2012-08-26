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
      0)))



(send (new problem-002) print-problem)