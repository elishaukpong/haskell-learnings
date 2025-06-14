module PhoneBook where

csvData :: String
csvData = "Name,Number\nAlice,25\nBob,30\nCharlie,22\nDiana,28\nElisha,29"

type Name = String
type Number = Int

data PhoneBook = PhoneBook Name Number deriving (Show, Read)

parseData = [ (name, read number :: Number) | line <- tail (lines csvData), let (name, number) = splitComma line]

splitComma :: String -> (String, String)
splitComma s = let (a, b) = break (== ',') s in (a, drop 1 b)

parseDataToContactList = map (\(name,number) -> "PhoneBook " ++ show name ++ " " ++ show number) parseData

parseDataToContactListValue :: [PhoneBook]
parseDataToContactListValue = map (\x -> read x :: PhoneBook) parseDataToContactList

-- Part 2

parseDataUsingComprehension = [ PhoneBook name number | (name, number) <- parseData]