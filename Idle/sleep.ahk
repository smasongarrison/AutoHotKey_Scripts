#NoEnv ; For security
#SingleInstance force
#Persistent
DetectHiddenWindows, On
SetTimer, PauseTimer, -540000
return 
!s::
SetTimer, PauseTimer, -540000
return 

If(A_TimeIdlePhysical < 10)
SetTimer, PauseTimer, -540000
return

PauseTimer:
WinActivate, VLC media player
send {space}
return 