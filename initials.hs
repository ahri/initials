eat :: String -> String
eat "" = ""
eat all@(l:str)
    | l == ' ' = eat str
    | otherwise = chew all

chew :: String -> String
chew "" = ""
chew (l:str) = [l] ++ munch str

munch :: String -> String
munch "" = ""
munch (l:str)
    | l == ' ' = eat str
    | otherwise = munch str
