module Main (main) where

import Control.Monad (when)
import Lib (someFunc)
import Options.Applicative

data Args = Args Int Bool

arguments :: Parser Args
arguments =
  Args
    <$> argument
      auto
      ( metavar "MOD_ID"
          <> help "Mod ID to retrieve, download and store a mod"
      )
    <*> switch
      ( long "verbose"
          <> short 'v'
          <> help "Give more output"
      )

main :: IO ()
main = execParser opts >>= greet
 where
  opts =
    info
      (arguments <**> helper)
      ( fullDesc
          <> progDesc "Download mods"
          <> header "skibidi rizzler"
      )

greet :: Args -> IO ()
greet (Args modID verbose) = do
  when verbose $ putStrLn "Verbose output"
  someFunc
