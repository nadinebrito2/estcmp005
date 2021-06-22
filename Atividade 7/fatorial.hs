module Main where

fatorial_aux num parcial = if num == 1 then parcial else fatorial_aux (num-1) (parcial*num)
fatorial_cauda num = fatorial_aux num 1

main = do n <- readLn
          print(fatorial_cauda n)