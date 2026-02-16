-- Introducing Recursion

-- Calculating factorial

factorial :: Int -> Int
factorial 1 = 1
factorial n = if n < -1 then 0 else n * factorial (n-1)

-- Calculating sum until

sumFunc :: Int -> Int
sumFunc 1 = 1
sumFunc n = if n < 1 then 0 else n + sumFunc(n-1)

-- Calculating nth fibonacci number

fibonacci :: Int -> Int
fibonacci 1 = 1
fibonacci 2 = 1
fibonacci n = fibonacci (n-2) + fibonacci (n-1)
 
main = do
    print(factorial(-1))
    print(sumFunc(4))
    print(fibonacci(5))