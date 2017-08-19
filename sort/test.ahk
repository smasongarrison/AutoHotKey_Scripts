#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Gui, +LastFound +AlwaysOnTop +ToolWindow -Caption +Border +E0x08000000
Gui, Font, s07, Arial
Loop, 12
Gui, Add, Button, % "x" 5+(A_Index-1)*60 " y5 w60 h25 vF" A_Index " gButton", F%A_Index%
Gui, Show, y0 w730 h35 NoActivate
Return

Button:
	SendInput, % "{" A_GuiControl "}"
Return

GuiClose:
	ExitApp
Return
