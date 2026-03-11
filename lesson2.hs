module Gold where

-- Conditionals


startCond :: String
startCond = "hello"

price :: Int
price = if startCond == "hello" then 1 else 2

username :: String
username = "Sabs"
password :: String
password = "123Sabs123"

login :: String -> String -> String
login user pass = if user == username 
                  then if pass == password
                       then "logged in successfully"
                       else "wrong password"
                  else "wrong username"

-- Conditionals with local definitions 

circleArea :: Double -> Double
circleArea r = let pi = 3.141592653 in pi * r^2

circleCircumference :: Double -> Double
circleCircumference r = pi * doubleR 
    where pi = 3.141592653 
          doubleR = r*2

-- Pattern Matching (Python -> Case, Default)

login2 :: String -> String -> String
login2 "Sabs"   "1" = "Sabs logged in"
login2 "Razvan" "2" = "Razvan logged in"
login2 "Sabs"   _ = "Wrong password entered, Sabs"
login2 "Razvan" _ = "Wrong password entered, Razvan"
login2 _        _ = "No other users"
 
main = do
    print price
    print(login "Sabs" "123Sabs123")
    print(circleArea 2)
    print(circleCircumference 1)
    print(login2 "jordan" "2")