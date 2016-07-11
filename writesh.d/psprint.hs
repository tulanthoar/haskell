{-# LANGUAGE OverloadedStrings #-}
import Shelly
import Data.Text as T

main = shelly $ do
  out <- run "ps" ["aux"]
  echo ( reversed out )
  echo $ T.pack(show(T.length out))

reversed i = T.reverse i :: Text

