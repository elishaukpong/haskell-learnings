module Chapter2.Importation where

import Data.List

permutationsStartingWith :: Char -> String -> [String]
permutationsStartingWith letter = filter (\l -> head l == letter) . permutations