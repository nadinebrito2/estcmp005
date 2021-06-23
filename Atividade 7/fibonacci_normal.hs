 module Fibonacci (fibonacci) where

fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n-1) + fibonacci (n-2) 

main = do n <- readLn
          print(fibonacci n)
