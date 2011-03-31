{-# LANGUAGE EmptyDataDecls #-}

data Apple
data Orange

class Fruit a where

instance Fruit Apple
instance Fruit Orange

-- One would think this way, but it have no effect :-/
-- newtype Fruit a => Count a = Count Integer
newtype Count a = Count Integer

plus :: Fruit a => Count a -> Count a -> Count a
Count x `plus` Count y = Count (x + y)
