module BasicPersonRecordType (
  Person(..)
) where

data Person = Person String String Int Float String String deriving (Show)

-- Example usage:
-- let dude = Person "Morton" "Feldman" 99 180 "555-1234" "vanilla"
