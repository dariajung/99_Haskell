data NestedList a = Elem a | List [NestedList a]

myFlatten :: NestedList a -> [a]
myFlatten (List []) = []
myFlatten (Elem x) = [x]
myFlatten (List (y:ys)) = myFlatten y ++ myFlatten (List ys)