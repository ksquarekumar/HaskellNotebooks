zipTogether :: [a] -> [b] -> [(a,b)]
zipTogether [] [] = []
zipTogether [] y = []
zipTogether x [] = []
zipTogether x y = (head x, head y):
                        (zipTogether (tail x)(tail y))
                        
zipTogether [1,2,3] "abc"