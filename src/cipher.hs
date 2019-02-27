import Data.Char

rotate :: Int -> Int -> Int
rotate m n
  | m + n <= 122 && m + n >= 97 = m + n
  | m + n >= 122 = (m + n) - 26
  | otherwise = m + 26 + n
  
cipher :: [Char] -> Int -> [Char]
cipher str 0 = [ if isAlpha n then toLower n else n | n <- str]
cipher str n = [ if isAlpha c then chr(rotate (ord(toLower c)) n) else c | c <- str]

cipher "hal 9000" 1