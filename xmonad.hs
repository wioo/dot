import XMonad
import XMonad.Config.Desktop
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.EwmhDesktops
import XMonad.Hooks.ManageDocks
import XMonad.Layout.NoBorders
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import System.IO

myLayout =Tall 1 (3/100) (1/2) ||| Full

xmobarEscape = concatMap doubleLts
  where doubleLts '<' = "<<"
        doubleLts x   = [x]


myWorkspaces :: [String]        
myWorkspaces = clickable . (map xmobarEscape) $ ["1","2","3","4","5"]
                                                                              
  where                                                                      
         clickable l = [ "<action=xdotool key super+" ++ show (n) ++ ">" ++ ws ++ "</action>" |
                             (i,ws) <- zip [1..5] l,                                        
                            let n = i ]

baseConfig = desktopConfig

main = xmonad =<< xmobar baseConfig
    { terminal    = "urxvt"
    , modMask     = mod4Mask
    , handleEventHook    = fullscreenEventHook
    , workspaces = myWorkspaces
    , layoutHook = avoidStruts $ smartBorders $ myLayout
    }
