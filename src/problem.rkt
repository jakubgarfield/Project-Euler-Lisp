#lang racket/gui

(provide problem-interface)
(provide problem)

(define problem-interface
  (interface () solve))

(define problem
  (class* object% (problem-interface)
    (super-new)
    (define/public-final (solve)
      (let ([current (current-milliseconds)]
            [result (send this solve-implementation)])
        (values result (- (current-milliseconds) current))))
    (define/public (description)
      (error "Override description method"))
    (define/public (solve-implementation)
      (error "Override solve method"))
    (define/public (print-problem)
      (fprintf (current-output-port) (send this description))
      (let-values (((result time) (send this solve)))
        (fprintf (current-output-port) "~nResult is ~a and was computed in ~b milliseconds." result time)))))