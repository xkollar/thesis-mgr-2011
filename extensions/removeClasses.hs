
{-# LANGUAGE Rank2Types #-}

type Eq' a = (a -> a -> Bool,a -> a -> Bool)

eq :: Eq' a -> a -> a -> Bool
eq = fst

elem' :: Eq' a -> a -> [a] -> Bool
elem' ((==),(/=)) = any . (==)

-- runEqBool :: (Eq' Bool -> b) -> b
-- runEqBool f = f ((==),(/=)) where
--     True  == x = x
--     False == x = not x
--     x /= y = not (x == y)
--
-- runEqList :: (Eq' [a] -> b) -> Eq' a -> b
-- runEqList f i = f ((==),(/=)) where
--     []    == []    = True
--     (x:s) == (y:t) = eq i x y && s == t
--     _     == _     = False
--     x /= y = not (x == y)

eqBool :: Eq' Bool
eqBool = ((==),(/=)) where
    True  == x = x
    False == x = not x
    x /= y = not (x == y)

eqList :: Eq' a -> Eq' [a]
eqList i = ((==),(/=)) where
    []    == []    = True
    (x:s) == (y:t) = eq i x y && s == t
    _     == _     = False
    x /= y = not (x == y)

type Monad' m = forall a b . (a -> m a,m a -> (a -> m b) -> m b)

type MultiMonad' m a b = (a -> m a,m a -> (a -> m b) -> m b)

type Apples  = Integer
type Oranges = Integer
