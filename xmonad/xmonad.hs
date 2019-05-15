import XMonad
import XMonad.Config.Desktop
import qualified XMonad.StackSet as W
import XMonad.Util.EZConfig

myModMask = mod4Mask

main = xmonad $ desktopConfig
  { modMask = mod4Mask
  , terminal = "terminator"
  , borderWidth = 2
  } `additionalKeysP` myKeys
  
myWorkspaces = ["1","2","3","4","5","6","7","8","9"]
  
myKeys = [ ("M-C-f", spawn "firefox")
    , ("M-C-e", spawn "emacs")
    , ("M-C-c", spawn "code")
    , ("M-C-i", spawn "idea")
    , ("M-C-l", spawn "slock")
    , ("M-C-p", spawn "gpaste-client ui")
    ] ++
    [ (otherModMasks ++ "M-" ++ [key], action tag)
      | (tag, key)  <- zip myWorkspaces "123456789"
      , (otherModMasks, action) <- [ ("", windows . W.view)
                                      , ("S-", windows . W.shift)]
    ]
