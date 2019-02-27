import Data.Char

strong :: String -> Bool
strong [] = False
strong str = length str > 14 && all (>0) [hasUpper, hasLower, hasANums]
             where hasUpper = length [ s | s <- str, isAsciiUpper s]
                   hasLower = length [ s | s <- str, isAsciiLower s]
                   hasANums = length [ s | s <- str, isNumber s]
                   
(strong "blitZkreig99", strong "blitzkreig99", strong "blitzkreiGSTER99")