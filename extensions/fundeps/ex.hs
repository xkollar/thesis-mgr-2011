{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE FunctionalDependencies #-}

class Coll s a | s -> a where
    empty  :: s
    insert :: s -> a -> s

