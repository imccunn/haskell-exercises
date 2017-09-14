
-- utility function for making a singleton tree (a tree with just one node)
singleton :: a -> Tree a

-- shortcut for making a node that has something and then two empty sub-trees
singleton x = Node x EmptyTree EmptyTree

-- function to insert an element into a tree
treeInsert :: (Ord a) => a -> Tree a -> Tree a
treeInsert x EmptyTree = singleton x
treeInsert x (Node a left right)
    | x == a = Node x left right
    | x < a  = Node a (treeInsert x left) right
    | x > a  = Node a left (treeInsert x right)
