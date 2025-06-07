module Folding where

sumArray _ [] = 0
sumArray initialValue arrayToSum = foldr (+) initialValue arrayToSum