module Main where

fib :: Int -> Int
fib 1 = 1
fib 2 = 2
fib n = (fibN1 + fibN2)
  where fibN1 = fib $ n - 1
        fibN2 = fib $ n - 2

main :: IO ()
main = do
  putStr $ (++) sumOfFibsStr "\n"
  where validFibNumbers = [x | x <- takeWhile (< 4000000) $ map fib [1..], even x]
        sumOfFibsStr = show $ sum validFibNumbers
