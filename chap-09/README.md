```
Prelude> mapM_ print [1..5]
1
2
3
4
5
```

```
$ runhaskell args.hs --solve
The arguments are:
--solve
The program name is:
args.hs
```

## Installing System.Random

```
Prelude> import System.Random

<no location info>: error:
    Could not find module ‘System.Random’
    It is not a module in the current program, or in any known package.
```

```
brew install haskell-stack
stack setup
stack install random
#stack ghci --package random
```

```
$ stack runhaskell guess.hs
Which number in the range from 1 to 10 am I thinking of? 3
Sorry, it was 7
Which number in the range from 1 to 10 am I thinking of? 2
Sorry, it was 9
Which number in the range from 1 to 10 am I thinking of? 1
Sorry, it was 4
Which number in the range from 1 to 10 am I thinking of? 4
Sorry, it was 5
Which number in the range from 1 to 10 am I thinking of? 3
Sorry, it was 8
Which number in the range from 1 to 10 am I thinking of? 2
Sorry, it was 10
Which number in the range from 1 to 10 am I thinking of? 4
You are correct!
Which number in the range from 1 to 10 am I thinking of? guess.hs: <stdin>: hGetLine: end of file
```

```
cabal install --lib random
```
