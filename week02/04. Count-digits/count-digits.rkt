#lang racket
(define (count-digits-iter n)
    (define (for num digits)
      (if (< num 10)
          digits
          (for (/ num 10) (+ digits 1))
          )
      )
    (for n 1)
)

(define (count-digits n)
    (if (< n 10)
        1
        (+ 1 (count-digits (/ n 10)))
    )
 )


(require rackunit rackunit/text-ui)

(define count-digits-tests
  (test-suite
   "Tests for count-digits"

   (check = (count-digits 0) 1)
   (check = (count-digits 3) 1)
   (check = (count-digits 12) 2)
   (check = (count-digits 42) 2)
   (check = (count-digits 666) 3)
   (check = (count-digits 1337) 4)
   (check = (count-digits 65510) 5)
   (check = (count-digits 8833443388) 10)))

(run-tests count-digits-tests)

(define count-digits-iter-tests
  (test-suite
   "Tests for count-digits-iter"

   (check = (count-digits-iter 0) 1)
   (check = (count-digits-iter 3) 1)
   (check = (count-digits-iter 12) 2)
   (check = (count-digits-iter 42) 2)
   (check = (count-digits-iter 666) 3)
   (check = (count-digits-iter 1337) 4)
   (check = (count-digits-iter 65510) 5)
   (check = (count-digits-iter 8833443388) 10)))

(run-tests count-digits-iter-tests)