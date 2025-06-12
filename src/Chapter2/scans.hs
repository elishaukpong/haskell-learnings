module Scans where

--sumOfSqrt = takeWhile (<= 1000) . scanl (\acc x -> acc + sqrt x ) 0 [1..]

sqrtSums = length (takeWhile (<1000) (scanl1 (+) (map sqrt [1..]))) + 1
sqrtSums' = takeWhile (<1000) (scanl1 (+) (map sqrt [1..]))