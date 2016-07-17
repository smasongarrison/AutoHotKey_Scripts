#SingleInstance force
FileSelectFolder, inFolder,  , 3


InputBox, UserInput, Append, Please enter the text you wish to append, , 640, 480

Loop, %inFolder%\*.*
{
  lnend:= StrLen(A_LoopFileName) - StrLen(A_LoopFileExt)-1
   
    newName := SubStr(A_LoopFileName, 1,lnend)

    ; Rename file
    FileMove, %A_LoopFileFullPath%, %inFolder%\%newName%_%UserInput%.%A_LoopFileExt%

    ; Confirm
 
}
   msgBox, Files renamed!

return ; AUTO EXEC ENDS ------------

Esc::
ExitApp