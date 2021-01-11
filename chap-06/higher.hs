divideByTen :: (Floating a) => a -> a
divideByTen = (/ 10)

applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

-- Collatz sequences
chain :: (Integral a) => a -> [a]
chain 1 = [1]
chain n
  | even n = n : chain (n `div` 2)
  | odd n = n : chain (n * 3 + 1)
