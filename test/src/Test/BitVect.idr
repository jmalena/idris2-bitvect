module Test.BitVect

import Test.Assert
import BitVect

test_add : IO Bool
test_add = assertEquals "add test" 5 (2 + 2)

export
tests_bitvect : List (IO Bool)
tests_bitvect = [test_add]
