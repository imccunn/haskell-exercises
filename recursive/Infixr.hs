infixr 5 :-:
data List a = Empty | a :-: (List a) deriving (Show, Read, Eq, Ord)

-- new syntatic construct, fixity declarations
-- when defining function as operators, can give them fixity

-- fixity state how tightly the operator binds and whether it's lef-associative
-- or right-associative
-- * fixity is 'infixl 7 *', + fixity is 'infixl 6'
--
-- when deriving show for our type, haskell will display it as if the
-- constructor was a prefix function: 4 + 3 -- (+) 4 3
