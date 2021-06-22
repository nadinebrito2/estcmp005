module Main where

fibonacci_aux num parcial = if num == 1 then parcial else fibonacci_aux (num-1) (parcial*num)
fibonacci_cauda num = fibonacci_aux num 1

main = do n <- readLn
          print(fibonacci_cauda n)