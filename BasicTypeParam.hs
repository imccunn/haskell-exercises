module BasicTypeParam (
  Maybe(..)
) where

-- tell haskell to import everything except Maybe since we are defining it again
import Prelude hiding (Maybe (..))

data Maybe a = Nothing | Just a deriving (Show)

-- 'a' is a type parameter
-- 'Maybe' is a type constructor
-- we can make different types with them depending on what kind of types we want
--  contained in our data type.

-- :t Nothing - type if polymorphic
--    just like 5 can act like an Int or a Double
