
class GNum a b where
    TypePlus a b :: *
    (+) :: a -> b -> TypePlus a b

