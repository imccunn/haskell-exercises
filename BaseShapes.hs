module BaseShapes (
  baseCircle,
  baseRect
) where

import GeoPrimitives

baseCircle :: Float -> Shape
baseCircle r = Circle (Point 0 0) r

baseRect :: Float -> Float -> Shape
baseRect width height = Rectangle (Point 0 0) (Point width height)
