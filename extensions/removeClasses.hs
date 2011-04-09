
type Eq' a = (a -> a -> Bool,a -> a -> Bool)

elem' :: Eq' a -> a -> [a] -> Bool
elem' ((==),(/=)) = any . (==)

runEqBool :: (Eq' Bool -> b) -> b
runEqBool f = f ((==),(/=)) where
    True  == x = x
    False == x = not x
    x /= y = not (x == y)

eq :: Eq' a -> a -> a -> Bool
eq = fst
