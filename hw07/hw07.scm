(define (filter-lst fn lst)
  'YOUR-CODE-HERE
  (cond ((null? lst) nil)
        (else 
              (if (fn (car lst)) 
                  (cons (car lst) (filter-lst fn (cdr lst)))
                  (filter-lst fn (cdr lst))))))

;;; Tests
(define (even? x)
  (= (modulo x 2) 0))
(filter-lst even? '(0 1 1 2 3 5 8))
; expect (0 2 8)


; (define (interleave first second)
;   'YOUR-CODE-HERE
;   (cond
;       ((and (null? first) (null? second)) '())
;       ((null? first) second)
;       ((null? second) first)
;       ((<= (car first) (car second)) (cons (car first) (interleave (cdr first) second)))
;       (else
;           (cons (car second) (interleave first (cdr second))))
;       )
; )

(define (interleave first second)
  'YOUR-CODE-HERE
  (cond
      ((and (null? first) (null? second)) '())
      ((null? first) second)
      ((null? second) first)
      (else
          (cons (car first) (interleave second (cdr first))))
      )
)


(interleave (list 1 3 5) (list 2 4 6))
; expect (1 2 3 4 5 6)

(interleave (list 1 3 5) nil)
; expect (1 3 5)

(interleave (list 1 3 5) (list 2 4))
; expect (1 2 3 4 5)


(define (accumulate combiner start n term)
  'YOUR-CODE-HERE
    (define (helper combiner i term)
        (if (= i n) (term n)
            (combiner (term i) (helper combiner (+ i 1) term))
        )
    )
    (combiner start (helper combiner 1 term))
)



(define (no-repeats lst)
  'YOUR-CODE-HERE
  (if (null? lst) '()
      (cons (car lst) (no-repeats (filter-lst (lambda(x) (not (equal? x (car lst)))) (cdr lst))))
      )
)

