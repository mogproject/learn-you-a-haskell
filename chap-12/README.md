```
*Main> Just 3 >>= \x -> Just(x+1)
Just 4
*Main> Just 3 >> Just(5)
Just 5
*Main> Nothing >> Just 3
Nothing
```

```
*Main> do; n <- [1,2]; ch <- ['a','b']; return (n,'a')
[(1,'a'),(1,'a'),(2,'a'),(2,'a')]
```

```
*Main> [ x | x <- [1..50], '3' `elem` show x]
[3,13,23,30,31,32,33,34,35,36,37,38,39,43]
```

- Left identity

```
*Main Control.Monad> return "a" >>= \s -> Just $ s ++ s
Just "aa"
```

- Right identity

```
*Main Control.Monad> Just "abc" >>= return
Just "abc"
```

- Associativity

```
*Main Control.Monad> ([1,2] >>= \x -> [x+1, x^2]) >>= \x -> [x^2]
[4,1,9,16]
*Main Control.Monad> [1,2] >>= (\x -> [x+1, x^2] >>= \x -> [x^2])
[4,1,9,16]
```
