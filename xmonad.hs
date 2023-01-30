import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run (spawnPipe)
import System.IO

main :: IO ()
main = do
    xmproc <- spawnPipe "xmobar ~/.xmonad/xmobar.hs"
    xmonad $ docks def
        { terminal = "alacritty"
        , modMask = mod1Mask
        , workspaces = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
        , focusedBorderColor = "#50fa7b"
        , normalBorderColor = "#8be9fd"
        , layoutHook = avoidStruts $ layoutHook def
        , logHook = dynamicLogWithPP xmobarPP
            { ppOutput = hPutStrLn xmproc
            , ppTitle = xmobarColor "green" "" . shorten 50
            }
        , manageHook = manageDocks <+> manageHook def
}
