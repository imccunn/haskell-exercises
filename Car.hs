module Car (
  Car(..)
) where

data Car = Car {
  company :: String,
  model :: String,
  year :: Int
} deriving (Show)

-- Example usage:
-- let someCar = Car {company="Ford", model="Mustang", year=1967 }
