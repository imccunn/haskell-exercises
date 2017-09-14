
data Tree a = EmptyTree | Node a (Tree a) (Tree a) deriving (Show, Read, Eq)

-- in the process of creating a function that takes a tree and an element and inserts an element, we create a new
-- sub-tree each time we decide to go left or right and in the end the insertion function returns a new tree because
-- haskell doesn't have a concept of pointer, just values.
