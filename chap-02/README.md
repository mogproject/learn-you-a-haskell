### Starting Out

```
$ ghci
GHCi, version 8.6.4: http://www.haskell.org/ghc/  :? for help
Prelude> :set prompt "ghci> "
ghci> 2 + 15
17
ghci> 5 * -3

<interactive>:3:1: error:
    Precedence parsing error
        cannot mix ‘*’ [infixl 7] and prefix `-' [infixl 6] in the same infix expression
ghci> 5 * (-3)
-15
ghci> True || False
True
ghci> True /= False
True
ghci> True /= True
False
ghci> 5 == True

<interactive>:8:1: error:
    • No instance for (Num Bool) arising from the literal ‘5’
    • In the first argument of ‘(==)’, namely ‘5’
      In the expression: 5 == True
      In an equation for ‘it’: it = 5 == True
ghci> succ 1
2
ghci> pred 1
0
ghci> pred 0
-1
ghci> min 1 0
0
ghci> min 1 True

<interactive>:13:5: error:
    • No instance for (Num Bool) arising from the literal ‘1’
    • In the first argument of ‘min’, namely ‘1’
      In the expression: min 1 True
      In an equation for ‘it’: it = min 1 True
ghci> succ 9 + min 5 4 + 2
16
ghci> 1 min 2

<interactive>:15:1: error:
    • Non type-variable argument
        in the constraint: Num ((a -> a -> a) -> t1 -> t2)
      (Use FlexibleContexts to permit this)
    • When checking the inferred type
        it :: forall a t1 t2.
              (Ord a, Num t1, Num ((a -> a -> a) -> t1 -> t2)) =>
              t2
ghci> min 1 2 3

<interactive>:16:1: error:
    • Non type-variable argument in the constraint: Ord (t1 -> t2)
      (Use FlexibleContexts to permit this)
    • When checking the inferred type
        it :: forall t1 t2. (Ord (t1 -> t2), Num t1, Num (t1 -> t2)) => t2
ghci> min 1 2
1
ghci> 3 `min` 3
3
ghci> 3 `min` 2
2
ghci>
Leaving GHCi.
```

### Lists




### Memo from four years ago

```
$ ghci
GHCi, version 8.0.1: http://www.haskell.org/ghc/  :? for help
Prelude> 2 + 15
17
Prelude> 49 * 100
4900
Prelude> 1892 - 1472
420
Prelude> 5/2
2.5
Prelude> (50*1000)-4999
45001
Prelude> 50 * (100 - 4999(

<interactive>:6:18: error:
    parse error (possibly incorrect indentation or mismatched brackets)
Prelude> 50 * (100 - 4999)
-244950
Prelude> 5 * -3

<interactive>:8:1: error:
    Precedence parsing error
        cannot mix ‘*’ [infixl 7] and prefix `-' [infixl 6] in the same infix expression
Prelude> 5 * (-3)
-15
Prelude> True && False
False
Prelude> True ^ False

<interactive>:11:1: error:
    • No instance for (Integral Bool) arising from a use of ‘^’
    • In the expression: True ^ False
      In an equation for ‘it’: it = True ^ False
Prelude> True || False
True
Prelude> not True
False
Prelude> 5 == 5
True
Prelude> 1==0
False
Prelude> 5 /= 5
False
Prelude> 5 /= 4
True
Prelude> "hello" == "hello"
True
Prelude> "hello" == "hollo"
False
Prelude> 5 + "llama"

<interactive>:20:1: error:
    • No instance for (Num [Char]) arising from a use of ‘+’
    • In the expression: 5 + "llama"
      In an equation for ‘it’: it = 5 + "llama"
Prelude> 5 + 4.0
9.0
```

```
Prelude> succ 8
9
Prelude> pred 8
7
Prelude> min 4.5 4
4.0
Prelude> max 4.5 4
4.5
Prelude> succ 9 * 10
100
Prelude> succ (9 * 10)
91
Prelude> div 92 10
9
Prelude> 92 `div` 10
9
Prelude>
```

```
Prelude> :l baby.hs
[1 of 1] Compiling Main             ( baby.hs, interpreted )
Ok, modules loaded: Main.
*Main> doubleMe 9
18
*Main> doubleMe 8.3
16.6
```
