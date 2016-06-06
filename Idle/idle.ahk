;IdleClose
; Source:http://www.donationcoder.com/forum/index.php?topic=2377.0
;2006-02-15
;kill certain programs after x hours of idle time
#Persistent
AutoExec8:
SetTimer, AutoKill, 540
;
; 540000 milliseconds = 9 minutes
; 3600000 milliseconds = 1 hour
; 5400000 milliseconds = 1,5 hours
; 7200000 milliseconds = 2 hours
; 7200000 milliseconds = 2 hours
; 9000000 milliseconds = 2,5 hours
;
AutoKill:
If A_TimeIdlePhysical > 1800000
 process, close, vlc.exe

return