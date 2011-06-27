module Main () where

import System.Environment
import Control.Monad
import Data.Maybe

hoppityfy :: Int -> Maybe String
hoppityfy n
  | n `mod` 3 == 0 && n `mod` 5 == 0 = Just "Hop"
  | n `mod` 3 == 0 = Just "Hoppity"
  | n `mod` 5 == 0 = Just "Hophop"
  | otherwise = Nothing

main :: IO ()
main = do
  [filename] <- getArgs
  content  <- readFile filename
  let n = (read content) :: Int
  let hops = catMaybes . map hoppityfy $ [1 .. n]
  forM_ hops $ \h -> putStr . (++ "\n") $ h
    