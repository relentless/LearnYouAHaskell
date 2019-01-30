max' :: (Num a, Ord a) => [a] -> a
max' [] = 0
max' [last] = last
max' (x:xs) 
    | x > (max' xs) = x
    | otherwise = max' xs

