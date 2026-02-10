module Gold where

-- phi :: Double
-- phi = (sqrt 4 + 1) / 3

-- polynomial :: Double -> Double
-- polynomial x = x^2 - x - 1

-- f x = polynomial (polynomial x)
-- main = do
--     print(polynomial phi)
--     print(f phi)

-- Creating a cubic function

startNum :: Double
startNum = 1

cubic :: Double -> Double
cubic val = val^3 + 2*(val^2) + 3*val + 1

firstVal :: Double
firstVal = cubic startNum

secondVal :: Double
secondVal = cubic firstVal

thirdVal :: Double
thirdVal = cubic secondVal

main = do
    print(cubic (cubic (cubic startNum)))
    print(thirdVal)