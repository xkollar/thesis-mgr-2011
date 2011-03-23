{-# LANGUAGE EmptyDataDecls #-}

-- import Data.Function ( on )

data Apple
data Orange

newtype Count a = Count Integer deriving (Show,Eq)

count (Count x) = x

plus :: Count a -> Count a -> Count a
Count x `plus` Count y = Count $ x + y

-- instance Num (Count a) where
--     (+) = (Count .) . on (+) count
--     (*) = (Count .) . on (*) count
--     abs = Count . abs . count
--     signum = Count . signum . count
--     fromInteger = Count . fromInteger

-- data Zero
-- data Succ a
--
-- data List a = Nil | Cons a (List b a)
--
-- nil :: List Zero a
-- nil = Nil
-- cons :: a -> List n a -> List (Succ n) a
-- cons x l = Cons x l

fix :: (a -> a) -> a
fix f = f (fix f)

mu :: (a -> a) -> a
mu f = x where x = f x

-- AlmostEmpty anamorphism

data AlmostEmpty = AE AlmostEmpty
newtype Empty = E Empty

ae :: AlmostEmpty
ae = AE ae

e :: Empty
e = E e

almostEmpty :: (a -> a) -> AlmostEmpty -> a
almostEmpty f (AE x) = f (almostEmpty f x)

empty :: (a -> a) -> Empty -> a
empty f (E x) = f (empty f x)

fact' :: (Integer -> Integer) -> Integer -> Integer
fact' f n = if n == 0 then 1 else n * f (n - 1)

fact1, fact2, fact3, fact4, fact5 :: Integer -> Integer
fact1 = fix fact' -- = mu fact'

-- undefined and ae are two distingushable values
fact2 = almostEmpty fact' ae
fact3 = almostEmpty fact' undefined

-- undefined and e are same (this is not proof of course).
fact4 = empty fact' e
fact5 = empty fact' undefined

bot :: a
bot = bot
