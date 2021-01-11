```
*Main> applyTwice (/2) 10
2.5
*Main> applyTwice (+3) 10
16
*Main> applyTwice (subtract 3) 10
4
*Main> dbl x  = x * 2
*Main> applyTwice dbl 10
40
```

```
*Main> length (filter (\x -> length (chain x) > 15) [1..100])
66
```

```
*Main> elem' y ys = foldl (\acc x -> x == y || acc) False ys
*Main> elem' 3 [1,2,3,4,5]
True
*Main> elem' 3 [1,2,4,5]
False
```

```
*Main> max' = foldr1 (\x acc -> max x acc)
*Main> max' [2,1,3,4,5]
5
*Main> max' [2,1,3,4,5,10]
10
*Main> max' [2,1,3,4,5,10,1]
10
*Main> max' [2,1,3,4,5,10,1,3]
10
*Main> reverse' = foldl (flip (:)) []
*Main> reverse' [1,3,2,5]
[5,2,3,1]
```

```
*Main> map ($ 3) $ map (^) [1..5]
[1,8,27,64,125]
*Main> map (negate . abs) [5,-3,-6,7,-3,2,-19,24]
[-5,-3,-6,-7,-3,-2,-19,-24]
*Main> sum . takeWhile (<10000) . filter odd . map (^2) $ [1..]
166650
```
