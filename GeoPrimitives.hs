module GeoPrimitives (
  Point(..),
  Shape(..),
  VerboseShape(..)
) where

data Shape = Circle Point Float | Rectangle Point Point deriving (Show)
data Point = Point Float Float deriving (Show)
data VerboseShape = VerboseCircle Float Float Float | VerboseRectangle Float Float Float Float

-- Circle is a value constructor. it has three fields (or parameters) which take floats
--  value constructors are actually functions that return a value of a data type
-- value constructors are just functions that take the fields as parameters and return a value of some type.
