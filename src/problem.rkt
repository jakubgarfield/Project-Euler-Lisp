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
    (define/public (solve-implementation)
      (error "Override solve method"))
    (define/public (print-result)
      (let-values (((result time) (send this solve)))
            (format "Result is ~a and was computed in ~b seconds" result time)))))