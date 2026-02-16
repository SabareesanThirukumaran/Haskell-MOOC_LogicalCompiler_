module Collatz where

-- Perform a collatz step
step :: Int -> Int
step n = if n `mod` 2 == 0 then divFunc else addFunc
    where divFunc = n `div` 2
          addFunc = (n*3) + 1

-- Perform the len until 1 is reached
collatz :: Int -> Int
collatz 1 = 0
collatz n = collatz (step n) + 1

-- Find longest sequence until x (given)
longest :: Int -> Int
longest x = findLongest 0 0 x

findLongest :: Int -> Int -> Int -> Int
findLongest x _ 0 = x
findLongest x maxLen currentNum = 
    if len > maxLen
        then findLongest currentNum len (currentNum-1)
        else findLongest x maxLen (x-1)
    where len = collatz x

main = do
    print(collatz 3)