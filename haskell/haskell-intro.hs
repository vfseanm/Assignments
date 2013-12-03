module HaskellIntro where

-- Problem 1: Write myZip which zips two lists

myip [] [] = []
myZip (x1:xs1) (x2:xs2) = (x1, x2):myZip xs1 xs2

-- Problem 2: Write qsort implementing quicksort

qsort [] = []

qsort (pivot:lst) = 
  let pivot = lst !! 0
      less = [x | x <- lst, x < pivot]
      greater = [x | x <- lst, x >= pivot]
  in (qsort less) ++ [pivot] ++ (qsort greater)  


-- Problem 3: Write function fib n, that computes the nth number in the fibonacci sequence in 0(n) time

fib n =
	let fibHelper (a, b) 0 = a
	let fibHelper (a, b) 1 = b
	let fibHelper (a, b) n = fibHelper(b, a+b) (n-1)
	in fibHelper (0, 1) n

-- Problem 3 Bonus: Construct an infinite sequence of fibonacci numbers, fibs

fibs = 0 : 1 : next fibs
	where next (a : b : xs) = (a + b) : next (b : xs)

-- Problem 4: http://projecteuler.net/problem=6

squares = [x*x| x <- [1..100]]

diff = ((sum [1..100]) ^2) - sum squares

-- Problem 5: http://projecteuler.net/problem=9

abc = [a*b*c | a <- [1..1000], b<- [1..1000], let c = 1000 - (a + b), c>0, c^2 == a^2 + b^2]

-- Problem 6: http://projecteuler.net/problem=5
