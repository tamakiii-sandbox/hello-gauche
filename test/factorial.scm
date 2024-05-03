(use gauche.test)
(include "../src/factorial")

;; Test cases
(define (test-factorial)
  (test-section "Testing factorial function")
  (test* "factorial of 0" 1 (factorial 0))
  (test* "factorial of 1" 1 (factorial 1))
  (test* "factorial of 5" 120 (factorial 5))
  (test* "factorial of 10" 3628800 (factorial 10)))

;; Run the tests
(test-factorial)
