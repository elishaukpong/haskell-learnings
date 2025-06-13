module Importation where

import Data.List
import Data.Char

numUniques :: (Eq a) => [a]-> Int
numUniques = length . nub


countWordsInString = length . words

countOfUniqueWords ::  String -> Int
countOfUniqueWords = length . group . sort . words

--countOfNaturalNumbers :: Int -> Int
countOfNaturalNumbers :: Show a => a -> [Int]
countOfNaturalNumbers = map digitToInt . map show