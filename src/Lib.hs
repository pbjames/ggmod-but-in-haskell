module Lib (
  someFunc,
) where

import Types (Character (..))

import Network.HTTP.Req

someFunc :: IO ()
someFunc = print SOL
