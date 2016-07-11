{-# LANGUAGE OverloadedStrings #-}
-- {-# LANGUAGE ExtendedDefaultRules #-}
-- {-# OPTIONS_GHC -fno-warn-type-defaults #-}
import Shelly
import Data.Text as T
import Control.Monad
main = shelly $ do
  replicateM_ 1000 echodo
  -- out <- run "xclip" ["-o", "-sel", "prim"]
  -- echo out

appendo = do
  txt <- run "xclip" ["-o", "-sel", "prim"]
  appendfile "stackfile" $ pack (show( T.length(T.reverse( T.intersperse ' ' txt) )))
echodo = do
  txt <- run "xclip" ["-o", "-sel", "prim"]
  echo $ (T.reverse( T.intersperse ' ' txt) )
