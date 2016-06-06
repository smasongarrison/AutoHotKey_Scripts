#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
;#Warn   ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%
FileDelete, output_flag.txt

FileOutput = %A_ScriptDir%\output_flag.txt
Header = %A_ScriptDir%\header_flag.txt
Flag = %A_ScriptDir%\flags.txt
Footer = %A_ScriptDir%\footer_flag.txt


file := FileOpen(FileOutput,"a")
if !IsObject(file)
{
	MsgBox Can't open "%FileOutput%" for appending.
	return
}

input := FileOpen(Header, "r")
text := input.Read()
input.close()
file.write(text)

input := FileOpen(Flag, "r")
text := input.Read()
input.close()
file.write(text)

input := FileOpen(Footer, "r")
text := input.Read()
input.close()
file.write(text)
file.close()

FileDelete, C:\Dropbox\Lab\zSoftware\AutoHotKey_Scripts\Style\style.ahk
FileRead, OutputVar, output_flag.txt
FileAppend, %Outputvar%, C:\Dropbox\Lab\zSoftware\AutoHotKey_Scripts\Style\style.ahk