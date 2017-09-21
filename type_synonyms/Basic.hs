type String = [Char]

phoneBook :: [(String, String)]

type PhoneNumber = String
type Name = String
type PhoneBook = [(Name,PhoneNumber)]

inPhoneBook :: Name -> PhoneNumber -> PhoneBook -> Bool
inPhoneBook name pnumber pbook = (name,pnumber) `elem` pbook

-- type synonyms can also be parameterized

type AssocList k v = [(k,v)]

-- we can partially apply type parameters and new type constructors from them
-- just like we call a function with too few parameters to get back a new function,
-- we can specify a type constructor with too few type params and get back a partially applied type constructor.

type IntMap v = Map Int v
type IntMap = Map Int

-- we can't do: AssocList [(1,2),(4,5),(7,9)]
-- we can refer to its type by using different names
-- [(1,2),(3,5),(8,9)] :: AssocList Int Int, which will make the numbers inside assume a type of Int
