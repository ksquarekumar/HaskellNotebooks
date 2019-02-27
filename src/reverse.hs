rev [] = []
rev (x:xs) = reverse xs ++ [x]

rev2 [] = []
rev2 xs = rev2 (tail xs) ++ [head xs]

rev3 [] = []
rev3 (x:xs) = reverse xs ++ [x]