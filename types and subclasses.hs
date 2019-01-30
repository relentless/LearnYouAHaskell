-- Notes

-- Typeclasses are cool!  Remind me a bit of Ruby/Scala Traits, or C# Interfaces for types
-- You can find all typeclasses with :i (:info) in gchi (e.g. :i Int)
-- read seems quite powerful
-- surprising that Bool is in the Enum typeclass - pred & succ only work if you use the correct value




addInts :: Int -> Int -> Int
addInts x y = x + y

addNums :: (Num x) => x -> x -> x
addNums a b = a + b