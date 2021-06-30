module Fibonacci (fibonacci_cauda) where

fibonacci_aux num a b = if num == 0 then a else if num == 1 then b else fibonacci_aux (num-1) b (a + b)
fibonacci_cauda num = fibonacci_aux num 0 1

main = do n <- readLn
          print(fibonacci_cauda n)
