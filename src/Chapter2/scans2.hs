module ScansAgain where

sqrtSums = length(takeWhile (< 1000) (scanl1 (+) (map sqrt [1..]))) + 1

sqrtSums' = length . takeWhile (< 1000) $ (scanl1 (+) (map sqrt [1..]))

tea = sum (filter (> 10) (map (*2) [2..10]))
tea' = sum $ filter (> 10) $ map (*2) [2..10]

fn x = ceiling (negate (tan (cos (max 50 x))))
fn' x = ceiling . negate . tan . cos $ max 50 x