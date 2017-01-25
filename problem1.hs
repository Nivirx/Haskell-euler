module Euler1 where

fact3or5 :: [Int] -> [Int]
fact3or5 n = [x | x <- n,
                (x `mod` 3) == 0 || (x `mod` 5) == 0]

main :: IO ()
main = do
  putStr ((show sumof) ++ "\n")
  where sumof = (sum (fact3or5 [1..999]))
