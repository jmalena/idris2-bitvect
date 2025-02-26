module Test.Main

import Data.List
import Test.BitVect

main : IO ()
main = do
  results <- sequence [tests_bitvect]
  pure ()
