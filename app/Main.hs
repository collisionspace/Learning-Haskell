module Main where

import Algo

main :: IO ()
main = do
  putStrLn $(show (insertionSort [6, 5, 3, 7, 2]))
