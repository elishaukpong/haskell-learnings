module MyTypes where

data Bool = True | False

data Point = Point Float Float deriving Show

data Shape = Circle Point Float | Rectangle Point Point
                deriving Show

area (Circle _  r ) = pi * (r ^ 2);

data Person = Person String String Int Float String deriving Show

data PersonUsingRecord = PersonRecord {
                                firstName :: String,
                                lastName :: String,
                                age :: Int,
                                height :: Float,
                                iceCream :: String
                                } deriving Show