data Vector a = Vector a a a deriving (Show)

vplus :: (Num t) => Vector t -> Vector t -> Vector t
(Vector i j k) `vplus` (Vector l m n) = Vector (i+l) (j+m) (k+n)

vectMult :: (Num t) => Vector t -> t -> Vector t
(Vector i j k) `vectMult` m = Vector (i*m) (j*m) (k*m)

scalarMult :: (Num t) => Vector t -> Vector t -> t
(Vector i j k) `scalarMult` (Vector l m n) = i*l + j*m + k*n

-- these functions can operate on types of Vec Int, Vec Integer, Vec Float
--   as long as 'a' from 'Vector a' is from the Num typeclass
-- these functions can operate only on vectors of the same type and the
--   numbers involved must also be of the type that is contained in the vectors.
-- Notice we didnt put a 'Num' class constraint in the data declaration

-- Remember: data ""whatever is here is the type constructor"" = ""whatever is here is the value constructor""
