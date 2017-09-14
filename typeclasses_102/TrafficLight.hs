instance Eq TrafficLight where
  Red == Red = True
  Green == Green = True
  Yellow == Yellow = True
  _ == _ = False

-- define a type instance by using 'instance'

-- when we defined the typeclass functions, in the class declaration, in terms of mutual recursion,
-- that only requires us to overwrite one of the functions. this is called minimal complete definition
-- for the typeclass

-- class Eq a where
--    (==) :: a -> a -> Bool
--    (/=) :: a -> a -> Bool
-- if we defined Eq like this, Haskell doesn't know how they're related,
-- so the minimal complete definition would be both == and /=

-- implemented == by doing pattern matching, we define the ones that are equal then do a catch-all pattern

instance Show TrafficLight where
    show Red = "Red light"
    show Yellow = "Yellow light"
    show Green = "Green light"
