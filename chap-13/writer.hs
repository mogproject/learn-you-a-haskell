import Control.Monad.Trans.Writer

logNumber :: (Show a, Monad m) => a -> WriterT [[Char]] m a
logNumber x = writer (x, ["Got number: " ++ show x])

multWithLog :: Writer [String] Int
multWithLog = do
  a <- logNumber 3
  b <- logNumber 5
  return (a * b)
