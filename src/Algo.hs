module Algo
  (
   insertionSort
  ) where

insertionSort :: (Ord a) => [a] -> [a]
insertionSort [] = []
insertionSort [x] = [x]

-- x is first element
-- xs is the rest of the list 
insertionSort (x:xs) = insert $ insertionSort xs
  where insert [] = [x]
        insert (y:ys)
          | x < y = x : y : ys
          | otherwise = y : insert ys
