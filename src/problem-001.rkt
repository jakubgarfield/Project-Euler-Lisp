#lang racket
(require "problem.rkt")
(provide problem-001)

(define problem-001
  (class* problem (problem-interface)
    (super-new)
    (define/override-final (solve-implementation)
      (for ([i (in-range 1000)])
        (for ([j (in-range 3)]) (printf "~s\n" j))
        (printf "~s\n" i))
      400514)))