## Functors

- `(->) r` equivalent to `r -> ?`
  - instance: `f(x) = y`
- fmap: `(r->a) -> (r->b)`
  - instance: `g(y) = z`
  - result: `f |-> g = x |-> g(f(x))`

```
Prelude> :m + Control.Monad.Instances

<interactive>:1:1: warning: [-Wdeprecations]
    Module ‘Control.Monad.Instances’ is deprecated:
      This module now contains no instances and will be removed in the future
Prelude Control.Monad.Instances> :t fmap (*3) (+100)
fmap (*3) (+100) :: Num b => b -> b
Prelude Control.Monad.Instances> fmap (*3) (+100) 1
303
Prelude Control.Monad.Instances> (*3) . (+100) 1

<interactive>:4:1: error:
    • Non type-variable argument in the constraint: Num (a -> c)
      (Use FlexibleContexts to permit this)
    • When checking the inferred type
        it :: forall c a. (Num c, Num (a -> c)) => a -> c
Prelude Control.Monad.Instances> (*3) . (+100) $ 1
303
```

- `fmap`
  - takes a function (A -> B)
  - returns a new function (Functor[A] -> Functor[B]): *lifting function*

```
Prelude Control.Monad.Instances> :t fmap (*2)
fmap (*2) :: (Functor f, Num b) => f b -> f b
Prelude Control.Monad.Instances> :t fmap (replicate 3)
fmap (replicate 3) :: Functor f => f a -> f [a]
Prelude Control.Monad.Instances> let f = fmap (replicate 3)
Prelude Control.Monad.Instances> f [1, 2, 3]
[[1,1,1],[2,2,2],[3,3,3]]
Prelude Control.Monad.Instances> f "a"
["aaa"]
Prelude Control.Monad.Instances> f "ab"
["aaa","bbb"]
Prelude Control.Monad.Instances> f Nothing
Nothing
Prelude Control.Monad.Instances> f Right "hell"
[Right "hell",Right "hell",Right "hell"]
Prelude Control.Monad.Instances> f Left "hell"
[Left "hell",Left "hell",Left "hell"]
Prelude Control.Monad.Instances> fmap (replicate 3) (Left "foo")
Left "foo"
Prelude Control.Monad.Instances> f (Left "hell")
Left "hell"
Prelude Control.Monad.Instances> f (Right "hell")
Right ["hell","hell","hell"]
Prelude Control.Monad.Instances> :t f
f :: Functor f => f a -> f [a]
Prelude Control.Monad.Instances> :t Right
Right :: b -> Either a b
Prelude Control.Monad.Instances> f $ Right "hell"
Right ["hell","hell","hell"]
```

## Applicative Functors

```
Prelude Control.Monad.Instances> let a = fmap (*) (Just 3)
Prelude Control.Monad.Instances> fmap (\f -> f 10) a
Just 30
```

```
Prelude Control.Monad.Instances> Just (+3) <*> Just 9
Just 12
Prelude Control.Monad.Instances> pure (+3) <*> Just 9
Just 12
Prelude Control.Monad.Instances> Nothing <*> Just 9
Nothing
Prelude Control.Monad.Instances> pure (+3) <*> Nothing
Nothing
Prelude Control.Monad.Instances> Nothing <*> Nothing
Nothing
Prelude Control.Monad.Instances> (+) <$> Just 9 <*> Just 3
Just 12
```

```
Prelude Control.Monad.Instances> pure "Hey" :: [String]
["Hey"]
Prelude Control.Monad.Instances> [(*0), (+100), (^2)] <*> [1..3]
[0,0,0,101,102,103,1,4,9]
Prelude Control.Monad.Instances> (++) <$> ["ha","heh","hmm"] <*> ["?","!","."]
["ha?","ha!","ha.","heh?","heh!","heh.","hmm?","hmm!","hmm."]
Prelude Control.Monad.Instances> (+) <$> (+3) <*> (*100) $ 5
508
```

```
Prelude Control.Monad.Instances> import Control.Applicative

<interactive>:1:1: warning: [-Wdeprecations]
    Module ‘Control.Monad.Instances’ is deprecated:
      This module now contains no instances and will be removed in the future
Prelude Control.Monad.Instances Control.Applicative> ZipList [(+3),(*2)] <*> ZipList [3, 4]
ZipList {getZipList = [6,8]}
```

```
Prelude Control.Monad.Instances Control.Applicative> liftA2 (:) (Just 3) (Just 4)

<interactive>:55:1: error:
    • Non type-variable argument in the constraint: Num [a]
      (Use FlexibleContexts to permit this)
    • When checking the inferred type
        it :: forall a. (Num a, Num [a]) => Maybe [a]
Prelude Control.Monad.Instances Control.Applicative> liftA2 (:) (Just 3) (Just [4])
Just [3,4]
Prelude Control.Monad.Instances Control.Applicative> liftA2 (:) (Just [3]) (Just [4])

<interactive>:57:1: error:
    • Non type-variable argument in the constraint: Num [a]
      (Use FlexibleContexts to permit this)
    • When checking the inferred type
        it :: forall a. (Num a, Num [a]) => Maybe [[a]]
Prelude Control.Monad.Instances Control.Applicative> sequenceA [[1..3], [4..5],[6..7]]
[[1,4,6],[1,4,7],[1,5,6],[1,5,7],[2,4,6],[2,4,7],[2,5,6],[2,5,7],[3,4,6],[3,4,7],[3,5,6],[3,5,7]]
```

```
Prelude Control.Monad.Instances Control.Applicative> sequenceA [(>4),(<10),odd] 7
[True,True,True]
```

## newtype

```
Prelude> newtype CoolBool = CoolBool { getCoolBool :: Bool }
Prelude> helloMe (CoolBool _) = "hello"
Prelude> helloMe undefined
"hello"
```

## Monoids

```
Prelude> compare "zen" "ants"
GT
Prelude> compare "zen" "ant"
GT
Prelude> compare' x y = (length x `compare` length y) `mappend` (x `compare` y)
Prelude> compare' "zen" "ants"
LT
Prelude> compare' "zen" "ant"
GT
```

```
Prelude Data.Monoid> map First $ [Nothing, Just 9, Just 10]
[First {getFirst = Nothing},First {getFirst = Just 9},First {getFirst = Just 10}]
Prelude Data.Monoid> mconcat . map First $ [Nothing, Just 9, Just 10]
First {getFirst = Just 9}
Prelude Data.Monoid> getFirst . mconcat . map First $ [Nothing, Just 9, Just 10]
Just 9
```
