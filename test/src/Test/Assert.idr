module Test.Assert

export
assertEquals : Eq a => Show a => String -> a -> a -> IO Bool
assertEquals testName expected actual = 
  if expected == actual
    then do
      putStrLn $ "✓ " ++ testName
      pure True
    else do
      putStrLn $ "✗ " ++ testName
      putStrLn $ "  Expected: " ++ show expected
      putStrLn $ "  Got: " ++ show actual
      pure False
