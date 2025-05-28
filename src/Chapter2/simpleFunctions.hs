firstOrEmpty :: [[Char]] -> [Char]
firstOrEmpty characterList = if not (null characterList) then head characterList else "empty"

(+++) :: [a] -> [a] -> [a]
[] +++ listTwo = listTwo
listOne +++ listTwo = (head listOne) : ((tail listOne) +++ listTwo)

reverse2 :: [a] -> [a]
reverse2 [] = []
reverse2 listToReverse = (reverse2 (tail listToReverse)) ++ [head listToReverse]