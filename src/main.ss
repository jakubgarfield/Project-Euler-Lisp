#lang racket/gui
;(require "ui.rkt")
(require "problem.rkt")
(require "problem-001.rkt")



(define (solve-clicked problem textBox label)
  (let-values (((result time) (send problem solve)))
    (send textBox set-value (number->string result))
    (send label set-label (string-append "in " (number->string time) " ms"))))

(ProjectEuler-init 
 #:btnSolve001-callback (lambda (btn event) (solve-clicked (new problem-001) txtResult001 lblResult001))
 #:btnSolve002-callback (lambda (btn event) (solve-clicked (new problem-001) txtResult001 lblResult001)))