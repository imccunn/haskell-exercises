myLast :: [a] -> a
myLast [] = error "Non-empty list required."
myLast [x] = x
myLast (x:thetail) = myLast thetail

myLast2 :: [a] -> a
myLast2 = head . reverse


