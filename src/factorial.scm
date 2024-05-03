(define-module factorial
  (export factorial))

;; Function to calculate the factorial of a number
(define (factorial n)
  (if (< n 2)
      1
      (* n (factorial (- n 1)))))
