double x = x + x

doublesmall x = if x < 100 then double x else x

concatenatedLists = [1,2,3,4] ++ [5,6,7]

consedList = 1:[2,3,4]

firthItem = consedList !! 1

arange = [20,19..3]

evens = [n*2 | n <- [1..10], n > 1]

crossjoin = [(x,y) | x <- [1,2,3], y <- [4,5,6]]

-- rectangles with area between 50 and 100
rectangles = [(x,y) | x <- [1..100], y <- [1..100], x*y >= 50, x*y <= 100]