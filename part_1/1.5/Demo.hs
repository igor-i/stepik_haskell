module Demo where

factorial :: Integer -> Integer
factorial n = if n == 0 then 1 else n * factorial (n - 1)

factorial' :: Integer -> Integer
factorial' 0 = 1
factorial' n = n * factorial' (n - 1)

factorial'' :: Integer -> Integer
factorial'' 0 = 1
factorial'' n = if n < 0 then error "arg must be >= 0" else n * factorial'' (n - 1)

factorial''' :: Integer -> Integer
factorial''' 0 = 1
factorial''' n | n < 0 = error "arg must be >= 0"
               | n > 0 = n * factorial''' (n - 1)

factorial4 :: Integer -> Integer
factorial4 n | n == 0    = 1
             | n > 0     = n * factorial4 (n - 1)
             | otherwise = error "arg must be >= 0"

factorial5 :: Integer -> Integer
factorial5 n | n >= 0    = helper 1 n
             | otherwise = error "arg must be >= 0"

helper acc 0 = acc
helper acc n = helper (acc * n) (n - 1)

doubleFact :: Integer -> Integer
doubleFact n = if n == 0 || n == 1 then 1 else n * doubleFact (n - 2)

fibonacci :: Integer -> Integer
fibonacci n | n > 1     = fibonacci (n - 1) + fibonacci (n - 2)
            | n < 0     = fibonacci (n + 2) - fibonacci (n + 1)
            | otherwise = n

fibonacci' :: Integer -> Integer
fibonacci' n = iter 0 1 n

iter a b 0 = a
iter a b 1 = b
iter a b n | n > 1 = iter b (b + a) (n - 1)
           | n < 0 = iter (b - a) a (n + 1)
