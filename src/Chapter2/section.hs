module Section where


secontExample = (*2)

funct f x = f x

repCom xs = [replicate 3 x | x <- xs]

powerFst xs = [ x | (x,_) <- xs]

powerSqr xs = [[ x ^ 2 | x <- x] | x <- xs]

padding _ 0 _ = []
padding xs n v = xs : v
--padding xs n v = padding (xs ++ [v]) (n-1) v