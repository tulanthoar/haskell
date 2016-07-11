{-# LANGUAGE OverloadedStrings #-}
import Shelly

main = shelly $ do
    appendfile "a.hs" "main = print \"hello\""
    run "stack" ["ghc","a.hs"]
    out <- run "./a" []
    echo out
