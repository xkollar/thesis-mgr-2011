newtype Apples  = Apples  Integer
newtype Oranges = Oranges Integer

class Fruit a where
    plus :: a -> a -> a
instance Fruit Apples where
        Apples x `plus` Apples y = Apples (x + y)
instance Fruit Oranges where
        Oranges x `plus` Oranges y = Oranges (x + y)

