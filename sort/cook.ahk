#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetKeyDelay, 0, 10, Play  ; Note that both 0 and -1 are the same in SendPlay mode.
SetMouseDelay, 10, Play

#singleinstance force
Gui, +LastFound +AlwaysOnTop +ToolWindow -Caption +Border +E0x08000000
Gui, Font, s07, Arial

gui, add, button, x5 y5 h25 w60 gsub1, Pepperoni Pizza
gui, add, button, x65 y5 h25 w60 gsub2, Subroutine 2
Gui, Show, y0 w730 h35 NoActivate, pizza
return



sub1: ;when creating the subroutine remember to leave off the g.
 {
WinActivate Cook`, Serve`, Delicious!
Sleep 10
Send {t}
Sleep 10
Send {c}
Sleep 10
Send {p}
Sleep 10
Send {s}
 }
return

sub2:
 {
   msgbox, You clicked the Second button!
 }
return

guiclose:
exit:
 {
   exitapp
 }
return