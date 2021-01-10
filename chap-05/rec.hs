max' :: (Ord a) => [a] -> a
max' [] = error "maximum of empty list"
max' [x] = x
max' (x : xs)
  | x >= mx = x
  | otherwise = mx
  where
    mx = max' xs

max'' :: (Ord a) => [a] -> a
max'' [] = error "maximum of empty list"
max'' [x] = x
max'' (x : xs) = max x (max'' xs)

take' :: (Num i, Ord i) => i -> [a] -> [a]
take' n _
  | n <= 0 = []
take' _ [] = []
take' n (x : xs) = x : take' (n -1) xs

quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x : xs) =
  let smaller = quicksort ([a | a <- xs, a <= x])
      bigger = quicksort ([a | a <- xs, a > x])
   in smaller ++ [x] ++ bigger
