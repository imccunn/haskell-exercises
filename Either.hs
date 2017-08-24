import Prelude hiding ( Either(..) )
data Either a b  = Left a | Right b deriving (Eq, Ord, Read, Show)
