#lang racket
(require rackunit)
(require "problem.rkt")
(provide problem-001)

(define problem-001
  (class* problem (problem-interface)
    (super-new)
    (define/override-final (solve-implementation)
      400514)))



(send (new problem-001) print-result)