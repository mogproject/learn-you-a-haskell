```
Prelude> :l zipper.hs
[1 of 1] Compiling Main             ( zipper.hs, interpreted )
Ok, one module loaded.
*Main> let xs = [1,2,3,4]
*Main> goForward (xs, [])
([2,3,4],[1])
*Main> goForward ([2,3,4], [1])
([3,4],[2,1])
*Main> goBack ([2,3,4], [1])
([1,2,3,4],[])
*Main> goBack ([2,3,4], [1])
([1,2,3,4],[])
*Main> goBack ([2,3,4], [1])
([1,2,3,4],[])
*Main> goBack ([1,2,3,4], [])
*** Exception: zipper.hs:7:1-30: Non-exhaustive patterns in function goBack

*Main>     x -: f = f x
*Main> ([1,2,3,4], []) -: goForward
([2,3,4],[1])
*Main> ([1,2,3,4], []) -: goForward -: goForward -: goBack
([2,3,4],[1])
*Main> ([1,2,3,4], []) -: goForward -: goForward -: goBack -: goForward
([3,4],[2,1])
```
