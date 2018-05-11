data NestedList a = Elem a | List [NestedList a]

flatten :: NestedList a -> [a]
flatten (Elem value) = [value]
flatten (List (x:xs)) = flatten x ++ flatten (List xs)
flatten (List []) = []