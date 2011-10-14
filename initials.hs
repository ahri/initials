eat :: String -> String
eat "" = ""
eat all@(char:string)
    | char == ' ' = eat string
    | otherwise = chew all

chew :: String -> String
chew (letter:word) = [letter] ++ munch word

munch :: String -> String
munch "" = ""
munch (char:string)
    | char == ' ' = eat string
    | otherwise = munch string
