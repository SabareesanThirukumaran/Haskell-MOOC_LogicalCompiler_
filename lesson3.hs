-- Recursive helper functions (Non Clean)

repeatString :: String -> Int -> String
repeatHelper :: String -> Int -> String -> String

repeatString str n = repeatHelper str n ""
repeatHelper str n result = if (n == 0) then result else repeatHelper str (n-1) (result++" "++str)

-- Recursive helper functions (Clean)

stringRepeater :: String -> Int -> String
stringHelper :: String -> Int -> String -> String

stringRepeater str n = stringHelper str n ""
stringHelper _ 0 result = result
stringHelper str n result = stringHelper str (n-1) (result++" "++str)

-- Generating the nth fibonacci number

fibonacci :: Int -> Int
fibonacci' :: Int -> Int -> Int -> Int

fibonacci n = fibonacci' 0 1 n
fibonacci' a b 1 = b
fibonacci' a b n = fibonacci' b (a+b) (n-1)

-- Guards (Used instead of if-then-else)

factorial :: Int -> Int
factorial n
    | n < 0 = -1
    | n == 0 = 1
    | otherwise = n * factorial (n-1)


-- Lists & Operations

-- head :: [a] -> a            returns the first element
-- last :: [a] -> a            returns the last element
-- tail :: [a] -> [a]          returns everything except the first element
-- init :: [a] -> [a]          returns everything except the last element
-- take :: Int -> [a] -> [a]   returns the n first elements
-- drop :: Int -> [a] -> [a]   returns everything except the n first elements
-- (++) :: [a] -> [a] -> [a]   lists are concatenated with the ++ operator
-- (!!) :: [a] -> Int -> a     lists are indexed with the !! operator
-- reverse :: [a] -> [a]       reverse a list
-- null :: [a] -> Bool         is this list empty?
-- length :: [a] -> Int        the length of a list

-- case-of expressions

isEven :: Int -> Bool
isEven = even

describe :: Int -> String
describe n = case n of 0 -> "zero"
                       1 -> "one"
                       2 -> "two"
                       n -> "the number is " ++ if isEven n then "Even" else "Odd"