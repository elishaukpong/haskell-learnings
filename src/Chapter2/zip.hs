module Zip where

zipper [] [] = []
zipper (x:xs) (y:ys) = [x , y] : zipper xs ys