module Zip where

zipper [] [] = []
zipper (x:xs) (y:ys) = [x , y] : zipper xs ys
zipper' (x:xs) (y:ys) =( x : y : []) : zipper xs ys

-- Using List Comprehension

--zipComprehension first last = [x : y : [] | x <- first, y <- last, zipComprehension (tail first) (tail last)]

firstLetter :: String-> String
firstLetter "" = "Empty string, whoops!"
firstLetter all@(x:xs) = "The first letter of " ++ all ++ " is " ++ [x]

bmiTell bmi
 | bmi <= 18.5 = "You're underweight, you emo, you!"
 | bmi <= 25.0 = "You're supposedly normal. Pffft, I bet you're ugly!"
 | bmi <= 30.0 = "You're fat! Lose some weight, fatty"
 | otherwise = "You're a whale, congratulations!"


bmiTell' weight height
 | (bmiCalculator weight height) <= 18.5 = "You're underweight, you emo, you!"
 | (bmiCalculator weight height) <= 25.0 = "You're supposedly normal. Pffft, I bet you're ugly!"
 | (bmiCalculator weight height) <= 30.0 = "You're fat! Lose some weight, fatty"
 | otherwise = "You're a whale, congratulations!"


bmiCalculator weight height = weight / (height ^ 2)

tickle x y = z * t
    where z = x
          t = y

repeat' 0 _ = []
repeat' n x = x : repeat' (n - 1) x