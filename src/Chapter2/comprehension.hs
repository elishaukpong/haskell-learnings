module Comprehension where

raiseToPower xs = [x^2 | x <- xs, x > 5]

crossMultiply xs ys = [x*y | x <- xs, y <- ys]

removeLowerCases xs = [x | x <- xs, x `elem` ['A'..'Z']]
