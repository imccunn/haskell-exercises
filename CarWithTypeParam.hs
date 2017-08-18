-- module CarWithTypeParam (
--   Car(..)
-- ) where

data Car a b c = Car {
  make :: a,
  model :: b,
  year :: c
} deriving (Show)

-- FIXME
tellCar :: Car -> String
tellCar (Car {make = c, model = m, year = y}) = "This " ++ c ++ " " ++ m ++ " was made in " ++ show y

-- Usage Example:
-- let aClassic = Car {company="Ford", model="Bronco", year=1985}
-- tellCar aClassic


-- usually use type parameters when the type that's contained inside the data type's
--   various value constructors isn't really that important for the type to work.

-- another example of a parameterized type 'Map k v'
--   k is the type of the keys in the map and the v is the type of the values.
-- This enables us to have mappings from any type to any other type as long as
--    the type of the key is part of the 'Ord' typeclass

-- data (Ord k) => Map k v = ...

-- Never add typeclass constraints in data declarations
--  we'll end up having to put constraints into functions that use the types

-- example:
-- toList :: Map k a -> [(k, a)]
-- if Map k v had a type constraint in its data declaration, the type for toList
--   would have to be 'toList :: (Ord k) => Map k a -> [(k, a)]'
