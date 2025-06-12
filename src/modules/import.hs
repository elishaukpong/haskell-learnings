module Importation where

import Data.List

numUniques :: (Eq a) => [a]-> Int
numUniques = length . nub


countWordsInString = length . words

countOfUniqueWords ::  String -> Int
countOfUniqueWords = length . group . sort . words