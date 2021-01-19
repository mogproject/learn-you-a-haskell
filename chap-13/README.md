```
mapM_ putStrLn . fromDiffList . snd . runWriter $ finalCountDown 500000 
mapM_ putStrLn . snd . runWriter $ finalCountDown' 500000
```

```
*Main Control.Monad.Writer Control.Monad.Instances> (do; a <- (*2); b <- (+10); return (a + b) ) $ 5
25
```

```
*Main Control.Monad.Writer Control.Monad.Instances Control.Monad.State Control.Monad.Error> join (Just (Just 9))
Just 9
*Main Control.Monad.Writer Control.Monad.Instances Control.Monad.State Control.Monad.Error> join ([[1, 2], [3, 4], [5]])
[1,2,3,4,5]
```

```
*Main Control.Monad.Writer Control.Monad.Instances Control.Monad.State Control.Monad.Error> :set prompt "ghci> "
ghci> concat ([[1, 2], [3, 4], [5]])
[1,2,3,4,5]
```

```
ghci> :l filter.hs
[1 of 1] Compiling Main             ( filter.hs, interpreted )
Ok, one module loaded.

<interactive>:1:1: warning: [-Wdeprecations]
    Module ‘Control.Monad.Error’ is deprecated:
      Use "Control.Monad.Except" instead

<interactive>:1:1: warning: [-Wdeprecations]
    Module ‘Control.Monad.Instances’ is deprecated:
      This module now contains no instances and will be removed in the future
ghci> fst $ runWriter $ filterM keepSmall [9,1,5,2,10,3]
[1,2,3]
ghci> mapM_ putStrLn $ snd $ runWriter $ filterM keepSmall [9,1,5,2,10,3]
9 is too large, throwing it away
Keeping 1
5 is too large, throwing it away
Keeping 2
10 is too large, throwing it away
Keeping 3
```

```
ghci> powerset xs = filterM (\x -> [True, False]) xs
ghci> powerset [1,2,3]
[[1,2,3],[1,2],[1,3],[1],[2,3],[2],[3],[]]
```

```
ghci> import Data.Ratio
ghci> 1 % 4
1 % 4
ghci> 9 % 12
3 % 4
```

```
*Main Data.List> let (a, b) = partition fst $ getProb flipThree
*Main Data.List> map (foldl1 (+) . map snd) [a, b]
[9 % 40,31 % 40]
```
