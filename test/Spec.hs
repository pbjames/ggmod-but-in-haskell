-- import Lib
import Test.HUnit (Test (..), assertEqual, runTestTTAndExit)

tests :: Test
tests = undefined

-- TestList
--   [ TestCase $
--       assertEqual
--         "myLast-1"
--         (Just (4 :: Integer))
--         (Lib.someFunc )
--   ]
main :: IO ()
main = runTestTTAndExit tests
