myLength :: [a] -> Int
myLength = foldl (\n _ -> n + 1) 0