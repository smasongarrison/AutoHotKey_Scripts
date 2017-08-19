FileSelectFolder, WhichFolder,*%A_ScriptDir% ; Ask the user to pick a folder.
SetWorkingDir %WhichFolder%
Loop, %WhichFolder%\*.*
	FileList = %FileList%%A_LoopFileName%`n
Loop, parse, FileList, `n	
{
fileread, contents, %A_LoopField% ; Read the file
_image = contents
GetImageDimension(_image)
{
	DllCall("GDIplus\GdipGetImageDimension"
			, "UInt", _image
			, "Float*", w
			, "Float*", h)
	Return w "|" h
}

;INCOMPLETE