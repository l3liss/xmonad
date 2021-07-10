import XMonad
import XMonad.Layout.Spacing

myBorderWidth :: Dimension
myBorderWidth = 2           -- Sets border width for windows

myNormColor :: String
myNormColor   = "#282c34"   -- Border color of normal windows

myFocusColor :: String
myFocusColor  = "#46d9ff"   -- Border color of focused windows

main = xmonad defaultConfig
        { modMask = mod4Mask -- Use Super instead of Alt
        , terminal = "alacritty"
        , borderWidth        = myBorderWidth
        , normalBorderColor  = myNormColor
        , focusedBorderColor = myFocusColor
        -- more changes
        }
