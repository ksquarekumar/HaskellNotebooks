fac1 :: Integer -> Integer
fac1 0 = 1
fac1 n | n > 0 = n * fac1 (n-1)

fac2 n = foldl (*) 1 [1..n]