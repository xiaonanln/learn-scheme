(define (p) (p))
(define (sqrt-iter guess x)
  (if (good-enough? guess x)
	  guess
	  (sqrt-iter (improve guess x) 
				 x)))

(define (good-enough? guess x)
  	(< (abs (- (* guess guess) x)) 0.001)
	)

(define (sqrt x) 
  (sqrt-iter 1.0 x)
  )

(define (improve guess x)
  	(average guess (/ x guess)))

(define (average a b)
  	(/ (+ a b) 2))

(define (sqrt-iter-2 guess1 guess2 x)
  (if (good-enough-2? guess1 guess2 x)
	  guess2
	  (sqrt-iter-2 guess2 (improve guess2 x) 
				 x)))

(define (good-enough-2? g1 g2 x)
  	(< (abs (- g1 g2)) 0.001)
	)

(define (sqrt-2 x) 
  (sqrt-iter-2 0 1.0 x)
  )

(define (cube-root x)
  (cube-root-iter 0.0 1.0 x)
  )

(define (cube-root-iter g1 g2 x)
  (if (good-enough-cube-root g1 g2)
	g2
	(cube-root-iter g2 (improve-cube-root g2 x) x)
	))

(define (good-enough-cube-root g1 g2)
  	(< (abs (- g1 g2)) 0.001)
	)

(define (improve-cube-root g x)
  (/ (+ (/ x (* g g)) (* 2 g)) 3)
  )

