{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE IncoherentInstances #-}

import Prelude hiding ( ($) )

($) :: Subtype a b => (b -> c) -> a -> c
($) = coer

instance Subtype Int Float where
    coer = fromIntegral

class Subtype a b where
    coer :: a -> b

instance Subtype c c where
    coer = id

instance (Subtype c a , Subtype b d) => Subtype (a -> b) (c -> d) where
    coer f = coer . f . coer

