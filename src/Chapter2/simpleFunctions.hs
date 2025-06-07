module Chapter2.SimpleFunctions where

firstOrEmpty :: [[Char]] -> [Char]
firstOrEmpty characterList = if not (null characterList) then head characterList else "empty"

(+++) :: [a] -> [a] -> [a]
[] +++ listTwo = listTwo
listOne +++ listTwo = (head listOne) : ((tail listOne) +++ listTwo)

reverse2 :: [a] -> [a]
reverse2 [] = []
reverse2 listToReverse = (reverse2 (tail listToReverse)) ++ [head listToReverse]

--filter even [1,2,3,4,5,6,7,8,9]

filterOne :: (Eq a, Num a) => a -> Bool
filterOne = \y -> y == 1

filterNumber :: (Eq a) => a -> a -> Bool
filterNumber y = \x -> x == y

filterNot y = \x -> x /= y


