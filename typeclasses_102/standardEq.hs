class Eq a where
    (==) :: a -> a -> Bool
    (/=) :: a -> a -> Bool
    x == y = not (x /= y)
    x /= y = not (x == y)

-- if we have a type Car that derives Eq, we compare with the
-- equality function ==

-- class Eq a where -- defining a new typeclass called 'Eq'
-- 'a' is the type variable and it means that a will play the role
-- of the type that we will soon be making an instance of Eq. 'a' can be any lowercase word

-- example: class Eq equatable where

-- function bodies are implemented in this case and we defined them
-- in terms of mutual recursion
