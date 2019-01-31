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
 
myKeys = [ ("M-C-f", spawn "firefox")
    , ("M-C-e", spawn "emacs")
    , ("M-C-c", spawn "code")
    , ("M-C-i", spawn "idea")
    , ("M-C-l", spawn "slock")
    , ("M-C-p", spawn "xfce4-popup-clipman")
    ]
