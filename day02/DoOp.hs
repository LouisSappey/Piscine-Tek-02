--
-- EPITECH PROJECT, 2022
-- Piscine
-- File description:
-- DoOp.hs
--

import Text.Read

myElem :: Eq a => a -> [a] -> Bool
myElem n [] = False
myElem n (x:xs)
        | n == x = True
        | otherwise = myElem n xs

safeDiv :: Int -> Int -> Maybe Int
safeDiv x  0 = Nothing
safeDiv x y = Just (x `div` y)

-- safeNth :: [a] -> Int -> Maybe a

safeSucc :: Maybe Int -> Maybe Int
safeSucc Nothing = Nothing
safeSucc (Just x) = Just (x + 1)

myLookup :: Eq a => a -> [(a, b)] -> Maybe b
myLookup x [] = Nothing 
myLookup x ((a,b) : xs)
          | x == a = Just b
          | otherwise = myLookup x xs

maybeDo :: (a -> b -> c) -> Maybe a -> Maybe b -> Maybe c
maybeDo x _ Nothing = Nothing
maybeDo x Nothing _ = Nothing
maybeDo x (Just a) (Just b) = Just (x a b)


readInt :: [Char] -> Maybe Int
readInt = readMaybe
