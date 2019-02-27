convert :: (Double, [Char]) -> (Double, [Char])

convert (qt, k)
        | k == "m" = (qt * 1.09361, "yd")
        | k == "L" = (qt * 0.264172, "gal")
        | k == "kg" = (qt * 2.20462, "lb")
        | otherwise = error "non-existant unit specified, use m, L or kg !"
        
convert (1, "kg")