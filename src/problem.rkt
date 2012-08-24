#lang racket/gui
(require framework)

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
    (define/public (get-ui)
      ((set! horizontal-pane-1992
    (new
     horizontal-pane%
     (parent vertical-pane-1723)
     (alignment (list 'left 'center))
     (stretchable-width #t)
     (stretchable-height #f)))
  (set! m001
    (new
     message%
     (parent horizontal-pane-1992)
     (label
      (label-bitmap-proc
       (list "Find the sum of all the multiples of 3 or 5 below 1000." #f #f)))
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
  (set! btnSolve001
    (new
     button%
     (parent horizontal-pane-1992)
     (label (label-bitmap-proc (list "Solve" #f #f)))
     (callback btnSolve001-callback)
     (style '())
     (font (list->font (list 8 #f 'default 'normal 'normal #f 'default #f)))
     (enabled #t)
     (vert-margin 2)
     (horiz-margin 2)
     (min-width 0)
     (min-height 0)
     (stretchable-width #f)
     (stretchable-height #f)))
  (set! txtResult001
    (new
     text-field%
     (parent horizontal-pane-1992)
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
  (set! lblResult001
    (new
     message%
     (parent horizontal-pane-1992)
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
     (auto-resize #f))))))