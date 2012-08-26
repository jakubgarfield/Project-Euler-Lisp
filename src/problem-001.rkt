#lang racket
(require rackunit)
(require "problem.rkt")
(provide problem-001)

(define problem-001
  (class* problem (problem-interface)
    (super-new)
    (define/override-final (description)
      "Add all the natural numbers below one thousand that are multiples of 3 or 5.")
    (define/override-final (solve-implementation)
      (multipliers-below 999 0))))

(define (multipliers-below counter acc)
  (cond [(eq? counter 0) acc]
        [(or (is-divisible counter 3)
             (is-divisible counter 5)) (multipliers-below (- counter 1) (+ acc counter))]
        [else (multipliers-below (- counter 1) acc)]))

(define (is-divisible value factor)
  (eq? (modulo value factor) 0))


(send (new problem-001) print-problem)