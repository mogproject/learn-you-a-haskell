```
Prelude> :l Geometry.hs
[1 of 1] Compiling Geometry         ( Geometry.hs, interpreted )
Ok, one module loaded.
*Geometry> sphereVolume 1
4.1887903
*Geometry> sphereArea 2
50.265484
*Geometry> cubeVolume 10
1000.0
*Geometry> cuboidArea 10 10 10
600.0
```

```
Prelude> :m Data.List
Prelude Data.List> :t find
find :: Foldable t => (a -> Bool) -> t a -> Maybe a
Prelude Data.List> find (>9) [1..9]
Nothing
Prelude Data.List> find (>8) [1..9]
Just 9
```
