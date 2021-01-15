```
*Main Data.Map> :l shapes.hs
[1 of 1] Compiling Main             ( shapes.hs, interpreted )
Ok, one module loaded.
*Main Data.Map> read "Person {firstName =\"Michael\", lastName =\"Diamond\", age = 43}" :: Person
Person {firstName = "Michael", lastName = "Diamond", age = 43}
```

```
*Main Data.Map> Prelude.map (flip lockerLookup lockers) [101, 100, 102, 110, 105]
[Right "JAH3I",Left "Locker 100 is already taken!",Left "Locker number 102 doesn't exist!",Left "Locker 110 is already taken!",Right "QOTSA"]
```

```
:l Prelude> :l tree.hs
[1 of 1] Compiling Main             ( tree.hs, interpreted )
Ok, one module loaded.
*Main> let nums = [8,6,4,1,7,3,5,8]
*Main> let numsTree = foldr treeInsert EmptyTree nums
**Main> numsTree
Node 8 (Node 5 (Node 3 (Node 1 EmptyTree EmptyTree) (Node 4 EmptyTree EmptyTree)) (Node 7 (Node 6 EmptyTree EmptyTree) EmptyTree)) EmptyTree
*Main> 2 `treeElem` numsTree
False
*Main> 3 `treeElem` numsTree
True
*Main> 100 `treeElem` numsTree
False
*Main> 8 `treeElem` numsTree
True
```

```
*Main> :info Eq
class Eq a where
  (==) :: a -> a -> Bool
  (/=) :: a -> a -> Bool
  {-# MINIMAL (==) | (/=) #-}
        -- Defined in ‘GHC.Classes’
instance [safe] Eq a => Eq (Tree a) -- Defined at tree.hs:1:74
instance (Eq a, Eq b) => Eq (Either a b)
  -- Defined in ‘Data.Either’
instance Eq a => Eq (Maybe a) -- Defined in ‘GHC.Maybe’
instance Eq a => Eq [a] -- Defined in ‘GHC.Classes’
instance Eq Word -- Defined in ‘GHC.Classes’
instance Eq Ordering -- Defined in ‘GHC.Classes’
instance Eq Int -- Defined in ‘GHC.Classes’
instance Eq Float -- Defined in ‘GHC.Classes’
instance Eq Double -- Defined in ‘GHC.Classes’
instance Eq Char -- Defined in ‘GHC.Classes’
instance Eq Bool -- Defined in ‘GHC.Classes’
instance (Eq a, Eq b, Eq c, Eq d, Eq e, Eq f, Eq g, Eq h, Eq i,
          Eq j, Eq k, Eq l, Eq m, Eq n, Eq o) =>
         Eq (a, b, c, d, e, f, g, h, i, j, k, l, m, n, o)
  -- Defined in ‘GHC.Classes’
instance (Eq a, Eq b, Eq c, Eq d, Eq e, Eq f, Eq g, Eq h, Eq i,
          Eq j, Eq k, Eq l, Eq m, Eq n) =>
         Eq (a, b, c, d, e, f, g, h, i, j, k, l, m, n)
  -- Defined in ‘GHC.Classes’
instance (Eq a, Eq b, Eq c, Eq d, Eq e, Eq f, Eq g, Eq h, Eq i,
          Eq j, Eq k, Eq l, Eq m) =>
         Eq (a, b, c, d, e, f, g, h, i, j, k, l, m)
  -- Defined in ‘GHC.Classes’
instance (Eq a, Eq b, Eq c, Eq d, Eq e, Eq f, Eq g, Eq h, Eq i,
          Eq j, Eq k, Eq l) =>
         Eq (a, b, c, d, e, f, g, h, i, j, k, l)
  -- Defined in ‘GHC.Classes’
instance (Eq a, Eq b, Eq c, Eq d, Eq e, Eq f, Eq g, Eq h, Eq i,
          Eq j, Eq k) =>
         Eq (a, b, c, d, e, f, g, h, i, j, k)
  -- Defined in ‘GHC.Classes’
instance (Eq a, Eq b, Eq c, Eq d, Eq e, Eq f, Eq g, Eq h, Eq i,
          Eq j) =>
         Eq (a, b, c, d, e, f, g, h, i, j)
  -- Defined in ‘GHC.Classes’
instance (Eq a, Eq b, Eq c, Eq d, Eq e, Eq f, Eq g, Eq h, Eq i) =>
         Eq (a, b, c, d, e, f, g, h, i)
  -- Defined in ‘GHC.Classes’
instance (Eq a, Eq b, Eq c, Eq d, Eq e, Eq f, Eq g, Eq h) =>
         Eq (a, b, c, d, e, f, g, h)
  -- Defined in ‘GHC.Classes’
instance (Eq a, Eq b, Eq c, Eq d, Eq e, Eq f, Eq g) =>
         Eq (a, b, c, d, e, f, g)
  -- Defined in ‘GHC.Classes’
instance (Eq a, Eq b, Eq c, Eq d, Eq e, Eq f) =>
         Eq (a, b, c, d, e, f)
  -- Defined in ‘GHC.Classes’
instance (Eq a, Eq b, Eq c, Eq d, Eq e) => Eq (a, b, c, d, e)
  -- Defined in ‘GHC.Classes’
instance (Eq a, Eq b, Eq c, Eq d) => Eq (a, b, c, d)
  -- Defined in ‘GHC.Classes’
instance (Eq a, Eq b, Eq c) => Eq (a, b, c)
  -- Defined in ‘GHC.Classes’
instance (Eq a, Eq b) => Eq (a, b) -- Defined in ‘GHC.Classes’
instance Eq () -- Defined in ‘GHC.Classes’
instance Eq Integer
  -- Defined in ‘integer-gmp-1.0.2.0:GHC.Integer.Type’
*Main> :info Num
class Num a where
  (+) :: a -> a -> a
  (-) :: a -> a -> a
  (*) :: a -> a -> a
  negate :: a -> a
  abs :: a -> a
  signum :: a -> a
  fromInteger :: Integer -> a
  {-# MINIMAL (+), (*), abs, signum, fromInteger, (negate | (-)) #-}
        -- Defined in ‘GHC.Num’
instance Num Word -- Defined in ‘GHC.Num’
instance Num Integer -- Defined in ‘GHC.Num’
instance Num Int -- Defined in ‘GHC.Num’
instance Num Float -- Defined in ‘GHC.Float’
instance Num Double -- Defined in ‘GHC.Float’
```

```
*Main> :info Maybe
data Maybe a = Nothing | Just a         -- Defined in ‘GHC.Maybe’
instance Applicative Maybe -- Defined in ‘GHC.Base’
instance Eq a => Eq (Maybe a) -- Defined in ‘GHC.Maybe’
instance Functor Maybe -- Defined in ‘GHC.Base’
instance Monad Maybe -- Defined in ‘GHC.Base’
instance Semigroup a => Monoid (Maybe a) -- Defined in ‘GHC.Base’
instance Ord a => Ord (Maybe a) -- Defined in ‘GHC.Maybe’
instance Semigroup a => Semigroup (Maybe a)
  -- Defined in ‘GHC.Base’
instance Show a => Show (Maybe a) -- Defined in ‘GHC.Show’
instance Read a => Read (Maybe a) -- Defined in ‘GHC.Read’
instance MonadFail Maybe -- Defined in ‘Control.Monad.Fail’
instance Foldable Maybe -- Defined in ‘Data.Foldable’
instance Traversable Maybe -- Defined in ‘Data.Traversable’
```

```
*Main> :l yesno.hs
[1 of 1] Compiling Main             ( yesno.hs, interpreted )
Ok, one module loaded.
*Main> yesno $ length []
False
*Main> yesno $ []
False
*Main> yesno $ [1]
True
*Main> yesno $ 1

<interactive>:17:1: error:
    • Ambiguous type variable ‘a0’ arising from a use of ‘yesno’
      prevents the constraint ‘(YesNo a0)’ from being solved.
      Probable fix: use a type annotation to specify what ‘a0’ should be.
      These potential instances exist:
        instance [safe] YesNo (Maybe a) -- Defined at yesno.hs:15:10
        instance [safe] YesNo Bool -- Defined at yesno.hs:12:10
        instance [safe] YesNo Int -- Defined at yesno.hs:4:10
        ...plus one other
        (use -fprint-potential-instances to see them all)
    • In the expression: yesno $ 1
      In an equation for ‘it’: it = yesno $ 1

<interactive>:17:9: error:
    • Ambiguous type variable ‘a0’ arising from the literal ‘1’
      prevents the constraint ‘(Num a0)’ from being solved.
      Probable fix: use a type annotation to specify what ‘a0’ should be.
      These potential instances exist:
        instance Num Integer -- Defined in ‘GHC.Num’
        instance Num Double -- Defined in ‘GHC.Float’
        instance Num Float -- Defined in ‘GHC.Float’
        ...plus two others
        ...plus 17 instances involving out-of-scope types
        (use -fprint-potential-instances to see them all)
    • In the second argument of ‘($)’, namely ‘1’
      In the expression: yesno $ 1
      In an equation for ‘it’: it = yesno $ 1
*Main> yesno $ (1 :: Int)
True
*Main> yesno True
True
*Main> yesno False
False
*Main> yesno $ Just 0
True
*Main> yesno $ Nothing
False
```

```
Prelude> :k Int
Int :: *
Prelude> :k Maybe
Maybe :: * -> *
Prelude> :k Either
Either :: * -> * -> *
Prelude> :k Either Int
Either Int :: * -> *
Prelude> :k []
[] :: * -> *
Prelude> :k [Int]
[Int] :: *
Prelude> data Frank a b  = Frank {frankField :: b a} deriving (Show)
Prelude> :t Frank {frankField = Just "HAHA"}
Frank {frankField = Just "HAHA"} :: Frank [Char] Maybe
Prelude> :t Frank {frankField = "YES"}
Frank {frankField = "YES"} :: Frank Char []
```
