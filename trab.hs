-- Trabalho 1 de Programação Funcional
-- Alunos: Camila Ilges, Gabriel Tabajara, Giovanni Schenato, Guilherme Romanini
-- {-# OPTIONS_GHC -Wno-incomplete-patterns #-}

inverte :: [a] -> [a]
inverte [] = []
inverte (x: xs) = inverte xs ++ [x]

-- 1)

-- [1, 0, 1, 1, 0] -> 22
bin2dec :: [Int] -> Int
bin2dec [] = 0
bin2dec (x:xs) = x*(2 ^ length xs) + bin2dec xs

-- 2)

-- 22 -> [1, 0, 1, 1, 0]
dec2bin ::  Int -> [Int]
dec2bin 0 = [0]
dec2bin 1 = [1]
dec2bin x = dec2bin (div x 2) ++ [mod x 2]

-- 3)

-- [1,0,1,1,1,0,0,1,1,0,1] -> -563  
bincompl2dec ::  [Int] -> Int
bincompl2dec [] = 0
bincompl2dec (x:xs) | x == 1 = -(2^length xs) + bin2dec xs
                    | otherwise = bin2dec xs

-- 4)

--  22 -> [0, 1, 0, 1, 1, 0]
-- -22 -> [1, 0, 1, 0, 1, 0]
troca :: Int -> Int
troca 1 = 0
troca 0 = 1
troca x = x

dec2bincompl ::  Int -> [Int]
dec2bincompl x | x == -1 = [1]
               | x < 0 = 1 : somarbin (map troca (dec2bin (-x))) [0, 1]
               | otherwise = 0 : dec2bin x

-- 5)

somarbin :: [Int] -> [Int] -> [Int]
somarbin xs ys | length ys /= length xs = extendeSinal xs ys
               | otherwise = inverte(base (inverte xs) (inverte ys))

base :: [Int] -> [Int] -> [Int]
base [] [] = []
base [] ys = ys
base xs [] = xs
base (x:xs) (y:ys) | x == 0 && y == 0 = 0 : base xs ys
                   | x == 1 && y == 0 = 1 : base xs ys
                   | x == 0 && y == 1 = 1 : base xs ys
                   | otherwise = 0 : vai1 xs ys -- x == 1 and y == 1

vai1 :: [Int] -> [Int] -> [Int]
vai1 [] [] = []
vai1 [] ys = ys
vai1 xs [] = xs
vai1 (x:xs) (y:ys) | x == 0 && y == 0 = 1 : base xs ys
                   | x == 1 && y == 0 = 0 : vai1 xs ys
                   | x == 0 && y == 1 = 0 : vai1 xs ys
                   | otherwise =  1 : vai1 xs ys -- x == 1 and y == 1

extendeSinal :: [Int] -> [Int] -> [Int]
extendeSinal xs ys | length ys > length xs = extendeSinal (head xs : xs) ys 
                   | length xs > length ys = extendeSinal xs (head ys : ys)
                   | otherwise = somarbin xs ys

-- 6)

subtrairbin :: [Int] -> [Int] -> [Int]
subtrairbin xs ys = somarbin xs (compl2 ys)

compl2 :: [Int] -> [Int]
compl2 xs = somarbin (map troca xs) [0,1]

-- 7)

frac2bin :: Double -> ([Int],[Int])
frac2bin x | x >= 0 = (dec2bincompl (floor x), faz (x - fromIntegral (floor x)))
           | otherwise = (dec2bincompl (round x), faz (x - fromIntegral (round x)))

faz :: Double -> [Int]
faz x | x == 1 = []
      | (x*2) >= 1 = 1 : faz (x*2 - fromIntegral (floor x*2))
      | otherwise = 0 : faz (x*2 - fromIntegral (floor x*2))
-- 8)

bin2frac :: ([Int],[Int]) -> Double
bin2frac (xs,ys) | head xs == 1 = fromIntegral(bincompl2dec xs) - parteDecimal (inverte ys)
                 | otherwise = fromIntegral(bincompl2dec xs) + parteDecimal (inverte ys)

parteDecimal :: [Int] -> Double
parteDecimal [] = 0
parteDecimal (x:xs) = if x == 1 then (2 ^^ (-(length xs + 1))) + parteDecimal xs else 0 + parteDecimal xs