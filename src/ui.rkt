#lang racket/gui

;;==========================================================================
;;===                Code generated with MrEd Designer 3.7               ===
;;===                 http://mred-designer.origo.ethz.ch                 ===
;;==========================================================================

;;; Call (ProjectEuler-init) with optional arguments to this module

(require framework)

(provide ProjectEuler-init Main)
(provide lblResult001)
(provide txtResult001)
(provide horizontal-pane-1992)

(define (label-bitmap-proc l)
  (let ((label (first l)) (image? (second l)) (file (third l)))
    (or (and image?
             (or (and file
                      (let ((bmp (make-object bitmap% file 'unknown/mask)))
                        (and (send bmp ok?) bmp)))
                 "<Bad Image>"))
        label)))

(define (list->font l)
  (with-handlers
   ((exn:fail?
     (λ (e)
       (send/apply
        the-font-list
        find-or-create-font
        (cons (first l) (rest (rest l)))))))
   (send/apply the-font-list find-or-create-font l)))

(define ProjectEuler #f)
(define Main #f)
(define vertical-pane-1723 #f)
(define horizontal-pane-1992 #f)
(define m001 #f)
(define btnSolve001 #f)
(define txtResult001 #f)
(define lblResult001 #f)
(define horizontal-pane-5874 #f)
(define message-6082 #f)
(define button-6149 #f)
(define txtResult002 #f)
(define message-16839 #f)

(define (ProjectEuler-init
         #:btnSolve001-callback
         (btnSolve001-callback (lambda (button control-event) (void)))
         #:btnSolve002-callback
         (button-6149-callback (lambda (button control-event) (void))))
  (set! Main
    (new
     frame%
     (parent ProjectEuler)
     (label "Project Euler Lisp")
     (alignment (list 'center 'top))
     (min-width 800)
     (min-height 600)))
  (set! vertical-pane-1723
    (new
     vertical-pane%
     (parent Main)
     (vert-margin 15)
     (horiz-margin 15)
     (border 0)
     (spacing 0)
     (alignment (list 'center 'top))
     (min-width 0)
     (min-height 0)
     (stretchable-width #t)
     (stretchable-height #t)))  
  (set! horizontal-pane-5874
    (new
     horizontal-pane%
     (parent vertical-pane-1723)
     (vert-margin 0)
     (horiz-margin 0)
     (border 0)
     (spacing 0)
     (alignment (list 'left 'center))
     (min-width 0)
     (min-height 0)
     (stretchable-width #t)
     (stretchable-height #f)))
  (set! message-6082
    (new
     message%
     (parent horizontal-pane-5874)
     (label
      (label-bitmap-proc
       (list
        "By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms."
        #f
        #f)))
     (style '())
     (font (list->font (list 8 #f 'default 'normal 'normal #f 'default #f)))
     (enabled #t)
     (vert-margin 2)
     (horiz-margin 2)
     (min-width 0)
     (min-height 0)
     (stretchable-width #t)
     (stretchable-height #f)
     (auto-resize #f)))
  (set! button-6149
    (new
     button%
     (parent horizontal-pane-5874)
     (label (label-bitmap-proc (list "Solve" #f #f)))
     (callback button-6149-callback)
     (style '())
     (font (list->font (list 8 #f 'default 'normal 'normal #f 'default #f)))
     (enabled #t)
     (vert-margin 2)
     (horiz-margin 2)
     (min-width 0)
     (min-height 0)
     (stretchable-width #f)
     (stretchable-height #f)))
  (set! txtResult002
    (new
     text-field%
     (parent horizontal-pane-5874)
     (label "")
     (callback (lambda (text-field control-event) (void)))
     (init-value "")
     (style
      ((λ (l) (list* (first l) (second l) (third l)))
       (list 'single 'horizontal-label '())))
     (font (list->font (list 8 #f 'default 'normal 'normal #f 'default #f)))
     (enabled #t)
     (vert-margin 2)
     (horiz-margin 2)
     (min-width 100)
     (min-height 0)
     (stretchable-width #f)
     (stretchable-height #f)))
  (set! message-16839
    (new
     message%
     (parent horizontal-pane-5874)
     (label (label-bitmap-proc (list "" #f #f)))
     (style '())
     (font (list->font (list 8 #f 'default 'normal 'normal #f 'default #f)))
     (enabled #t)
     (vert-margin 2)
     (horiz-margin 2)
     (min-width 100)
     (min-height 0)
     (stretchable-width #f)
     (stretchable-height #f)
     (auto-resize #f)))
  (send Main show #t))


