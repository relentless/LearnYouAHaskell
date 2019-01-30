
-- no warning for incomplete petterns? - at runtime?!
-- (can turn on warning - few ways, e.g. below statement)
{-# OPTIONS_GHC -fwarn-incomplete-patterns #-}

import Data.Char

lucky :: (Integral a) => a -> String
lucky 5 = "Five"
lucky x = "Unlucky!"

-- multiple definitions pattern matched
fibonacci :: (Integral a) => a -> a
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n-1) + fibonacci (n-2)

-- single function with guards
fibonacci' :: (Integral a) => a -> a
fibonacci' n
    | n <= 1 = n
    | otherwise = fibonacci (n-1) + fibonacci (n-2)

--fourth :: (a, b, c, d) -> d
fourth (_, _, _, z) = z

-- incomplete pettern matches
match :: Int -> Bool
match 0 = True
match 1 = False

-- nested functions, case expressions  
    -- Have to define function on one line to define sub-function in where clause, so doesn't work with top-level pattern matching.

titleCase :: String -> String
titleCase text = title text True
    where 
        title :: String -> Bool -> String -- in examples the types of inner functions were not explicitly given
        title text' prevSpace = 
            case text' of
                [] -> ""
                (x:[]) -> [upper prevSpace x]
                (' ':xs) -> ' ' : title xs True
                (x:xs) -> (upper prevSpace x) : (title xs False)
            where
                upper :: Bool -> Char -> Char
                upper True x = toUpper x
                upper False x = x
                
-- alternative with let

titleCase' :: String -> String
titleCase' text = 
    let 
        title :: String -> Bool -> String
        title text' prevSpace = 
            let 
                upper :: Bool -> Char -> Char
                upper True x = toUpper x
                upper False x = x
            in
                case text' of
                    [] -> ""
                    (x:[]) -> [upper prevSpace x]
                    (' ':xs) -> ' ' : title xs True
                    (x:xs) -> (upper prevSpace x) : (title xs False)
    in
        title text True
    
