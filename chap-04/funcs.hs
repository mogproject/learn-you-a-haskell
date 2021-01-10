lucky :: (Integral a) => a -> String
lucky 7 = "LUCKY NUMBER SEVEN!"
lucky x = "Sorry, you're out of luck, pal!"

-- head' :: [a] -> a
-- head' [] = error "empty list"
-- head' (x : _) = x

head' :: [a] -> a
head' xs = case xs of
  [] -> error "No head for empty lists!"
  (x : _) -> x

-- bmiTell :: (RealFloat a) => a -> String
-- bmiTell bmi
--   | bmi <= 18.5 = "You're underweight, you emo, you!"
--   | bmi <= 25.0 = "You're supposedly normal. Pffft, I bet you're ugly!"
--   | bmi <= 30.0 = "You're fat! Lose some weight, fatty!"
--   | otherwise = "You're a whale, congratulations!"

-- bmiTell :: (RealFloat a) => a -> a -> String
-- bmiTell weight height
--   | weight / height ^ 2 <= 18.5 = "You're underweight, you emo, you!"
--   | weight / height ^ 2 <= 25.0 = "You're supposedly normal. Pffft, I bet you're ugly!"
--   | weight / height ^ 2 <= 30.0 = "You're fat! Lose some weight, fatty!"
--   | otherwise = "You're a whale, congratulations!"

-- bmiTell :: (RealFloat a) => a -> a -> String
-- bmiTell weight height
--     | bmi <= 18.5 = "You're underweight, you emo, you!"
--     | bmi <= 25.0 = "You're supposedly normal. Pffft, I bet you're ugly!"
--     | bmi <= 30.0 = "You're fat! Lose some weight, fatty!"
--     | otherwise   = "You're a whale, congratulations!"
--     where bmi = weight / height ^ 2

bmiTell :: (RealFloat a) => a -> a -> String
bmiTell weight height
  | bmi <= skinny = "You're underweight, you emo, you!"
  | bmi <= normal = "You're supposedly normal. Pffft, I bet you're ugly!"
  | bmi <= fat = "You're fat! Lose some weight, fatty!"
  | otherwise = "You're a whale, congratulations!"
  where
    bmi = weight / height ^ 2
    (skinny, normal, fat) = (18.5, 25.0, 30.0)

-- Calculates a surface area of a cylinder based on its radius and height.
cylinder :: (RealFloat a) => a -> a -> a
cylinder r h =
  let sideArea = 2 * pi * r * h
      topArea = pi * r ^ 2
   in sideArea + 2 * topArea

calcBmis :: (RealFloat a) => [(a, a)] -> [a]
calcBmis xs = [bmi | (w, h) <- xs, let bmi = w / h ^ 2, bmi >= 25.0]
