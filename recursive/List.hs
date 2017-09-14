
data List1 a = Empty1 | Cons1 a (List a) deriving (Show, Read, Eq, Ord)

data List a = Empty | Cons { listHead :: a, listTail :: List a} deriving (Show, Read, Eq, Ord)

-- cons is another word for :
-- can call Cons constructor in an infix manner
