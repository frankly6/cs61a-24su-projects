(define (caar x) (car (car x)))
(define (cadr x) (car (cdr x)))
(define (cdar x) (cdr (car x)))
(define (cddr x) (cdr (cdr x)))

;; Problem 15
;; Returns a list of two-element lists
(define (enumerate s)
  ; BEGIN PROBLEM 15
  (define (enumerate-from index s-remain)
    (if (equal? nil s-remain)
      nil
      (cons (list index (car s-remain)) (enumerate-from (+ 1 index) (cdr s-remain)))
    )
  )
  (enumerate-from 0 s)
)
  ; END PROBLEM 15

;; Problem 16

;; Merge two lists S1 and S2 according to ORDERED? and return
;; the merged lists.
(define (merge ordered? s1 s2)
  ; BEGIN PROBLEM 16
  (cond 
    ((equal? s1 nil) s2)
    ((equal? s2 nil) s1)
    ((ordered? (car s1) (car s2)) (append (list (car s1)) (merge ordered? (cdr s1) s2))) 
    (else (append (list (car s2)) (merge ordered? (cdr s2) s1)))
  )  
)
  ; END PROBLEM 16

;; Optional Problem 2

;; Returns a function that checks if an expression is the special form FORM
(define (check-special form)
  (lambda (expr) (equal? form (car expr))))

(define lambda? (check-special 'lambda))
(define define? (check-special 'define))
(define quoted? (check-special 'quote))
(define let?    (check-special 'let))

;; Converts all let special forms in EXPR into equivalent forms using lambda
(define (let-to-lambda expr)
  (cond ((atom? expr)
         ; BEGIN OPTIONAL PROBLEM 2
         'replace-this-line
         ; END OPTIONAL PROBLEM 2
         )
        ((quoted? expr)
         ; BEGIN OPTIONAL PROBLEM 2
         'replace-this-line
         ; END OPTIONAL PROBLEM 2
         )
        ((or (lambda? expr)
             (define? expr))
         (let ((form   (car expr))
               (params (cadr expr))
               (body   (cddr expr)))
           ; BEGIN OPTIONAL PROBLEM 2
           'replace-this-line
           ; END OPTIONAL PROBLEM 2
           ))
        ((let? expr)
         (let ((values (cadr expr))
               (body   (cddr expr)))
           ; BEGIN OPTIONAL PROBLEM 2
           'replace-this-line
           ; END OPTIONAL PROBLEM 2
           ))
        (else
         ; BEGIN OPTIONAL PROBLEM 2
         'replace-this-line
         ; END OPTIONAL PROBLEM 2
         )))

; Some utility functions that you may find useful to implement for let-to-lambda

(define (zip pairs)
  'replace-this-line)
