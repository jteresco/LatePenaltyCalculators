; Scheme function to print late penalties
;
; Jim Teresco
; The College of Saint Rose, Siena College
; CSC 433, Programming Languages, Fall 2012
; Updated to use mit-scheme, Fall 2014

(load-option 'format)
(define (latepenalties hours)
  (let ((penalty (expt 1.08 hours)))
    (format #t "Hour ~S late = ~S% penalty.~%" hours penalty)
    (if (< penalty 100)
        (latepenalties (+ hours 1))
        #t
        )
    )
  )

(latepenalties 1)
