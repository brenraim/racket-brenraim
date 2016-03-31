;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname racket1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;Brendan Raimann
;Racket Practice Problems
;3/15/16

17
(+ 18 18)
(quotient 11 2)
(remainder 11 2)
(define (foo x) (+ x x))
(foo 1)

;No arguments
(define two-plus-two (+ 2 2))

(define (foobar u v) (+ u v))
(foobar 7 8)

;toCelcius
(define (toCelsius num)
  (* (- num 32) (/ 5 9)))

 (toCelsius 70)


;countdown
(define (countdown num)
  (cond
    [(<= num 0) "Blast off"]
    [else (string-append
           (number->string num)
           " " (countdown(- num 1)))]))
(countdown 5)

;isLeapYear
(define (isLeapYear year)
  (cond
    [(= (modulo year 4) 0)
     (cond
       [(= (modulo year 100) 0)
        (cond
          [(= (modulo year 400) 0) "t"]
          [else "f"])]
       [else "t"])]
    [else "f"]))

(isLeapYear 2014)
(isLeapYear 2016)
(isLeapYear 1900)
(isLeapYear 2000)

;summation
(define (summation n)
  (cond
    [(= n 1) 1]
    [else (+ n (summation(- n 1)))]))

(summation 3)

;numDigit
(define (numDigit num)
  (cond
    [(<= num 9) 1]
    [else (+ (numDigit (quotient num 10)) 1)]))

(numDigit 1234)
(numDigit 986745)

;create-list
(define (create-list size)
  (cond
    [(= size 0) empty]
    [else (cons size (create-list (- size 1)))]))

(create-list 8)


;listLength
(define (listLength l)
  (cond
    [(empty? l) 0]
    [else (+ 1 (listLength (rest l)))]))

(listLength (create-list 3))


