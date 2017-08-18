module Surface (
  surface,
  surface2
) where

import GeoPrimitives

-- functions that take a shape and returns its surface

surface :: VerboseShape -> Float -- type declaration
surface (VerboseCircle _ _ r) = pi * r ^ 2 -- pattern match against constructor since we only care about the radius
surface (VerboseRectangle x1 y1 x2 y2) = (abs $ x2 - x1) * (abs $ y2 - y1)

-- constructor pattern matching while using Point intermediate data type

surface2 :: Shape -> Float -- type declaration
surface2 (Circle _ r) = pi * r ^ 2 -- pattern match against constructor since we only care about the radius
surface2 (Rectangle (Point x1 y1) (Point x2 y2)) = (abs $ x2 - x1) * (abs $ y2 - y1)

-- Usage Example:
-- surface (Rectangle (Point 0 0) (Point 100 100))
