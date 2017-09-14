class Eq a where
    (==) :: a -> a -> Bool
    (/=) :: a -> a -> Bool
    x == y = not (x /= y)
    x /= y = not (x == y)

-- how are Maybe or list types made as instance of typeclasses?
-- Maybe in itself isn't a concrete type, its a type constructor that
-- takes one type parameter (like Char or something) to produce a concrete type (Maybe Char)

-- in looking at the Eq typeclass again, we see 'a' is used as a concrete type
--    (you can't have a function of the type a -> Maybe but you can have a function of type a -> Maybe a
--     or Maybe Int -> Maybe String)
-- this is why we can't have 'instance Eq Maybe where ...'

instance Eq (Maybe m) where
    Just x == Just y = x == y
    Nothing == Nothing = True
    _ == _ = False

-- what's the issue with this^ ?
-- we use '==' on the contents of the Maybe but we have no assurance that what
-- the Maybe contains can be used with Eq

instance (Eq m) => Eq (Maybe m) where
    Just x == Just y = x == y
    Nothing == Nothing = True
    _ == _ = False

-- all types of the form 'Maybe m' to be part of the Eq typeclass

-- class constraints in class declarations are used for making a typeclass a sublass of
-- another typeclass and class constraints in instance declarations are used to express
-- requirements about the contents of some type.

-- use :info Num to see what the instances of typeclass are
