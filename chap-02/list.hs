length' xs = sum [1 | _ <- xs]

removeNonUppercase s = [c | c <- s, c `elem` ['A' .. 'Z']]

flatten' xxs = [x | xs <- xxs, x <- xs]

-- let rightTriangles = [ (a,b,c) | a <- [1..10], b <- [1..a], c <- [1..b], a^2 == b^2 + c^2 ]
-- let rightTriangles' = [ (a,b,c) | (a,b,c) <- rightTriangles, a + b + c == 24]

-- :load list.hs
-- removeNonUppercase "Hahaha! Ahahaha!"
