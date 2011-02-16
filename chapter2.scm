;; Atom tester
(define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))

;; determine if list is comprised only of atoms
(define lat?
  (lambda (l)
    (cond
     ((null? l) #t)
     ((atom? (car l)) (lat? (cdr l)))
     (else #f))))
