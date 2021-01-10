
```
*Main> read "True"
*** Exception: Prelude.read: no parse
*Main> read "True" :: Bool
True
*Main> read "3" :: Integer
3
```

```
*Main> (length []) + 3.2

<interactive>:59:15: error:
    • No instance for (Fractional Int) arising from the literal ‘3.2’
    • In the second argument of ‘(+)’, namely ‘3.2’
      In the expression: (length []) + 3.2
      In an equation for ‘it’: it = (length []) + 3.2
*Main> fromInteg (length []) + 3.2
fromInteger   fromIntegral
*Main> fromIntegral  (length []) + 3.2
3.2
```
