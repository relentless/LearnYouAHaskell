max8 = max 8

--map (+ 1) [1,2,3]

even' x = x `mod` 2 == 0

--filter (\x -> even x && x > 5) [0..20]

--map ($ 5) $ zipWith ($) (repeat (+)) [1..10]

doubleAdd5 = (+ 5) . (* 2)