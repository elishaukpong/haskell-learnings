module Comprehension where

items xs = [x^2 | x <- xs, x > 5]
