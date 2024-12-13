module Main (main) where

import Lib
import Options.Applicative

data Args = Args
  { hello :: String
  , quiet :: Bool
  , enthusiasm :: Int
  }

arguments :: Parser Args
arguments =
  Args
    <$> strOption
      ( long "hello"
          <> metavar "TARGET"
          <> help "Target for the greeting"
      )
    <*> switch
      ( long "quiet"
          <> short 'q'
          <> help "Whether to be quiet"
      )
    <*> option
      auto
      ( long "enthusiasm"
          <> help "How enthusiastically to greet"
          <> showDefault
          <> value 1
          <> metavar "INT"
      )

main :: IO ()
main = execParser opts >>= greet
 where
  opts =
    info
      (arguments <**> helper)
      ( fullDesc
          <> progDesc "Print a greeting for TARGET"
          <> header "hello - a test for optparse-applicative"
      )

greet :: Args -> IO ()
greet (Args h False n) = putStrLn $ "Hello, " ++ h ++ replicate n '!'
greet _ = return ()
