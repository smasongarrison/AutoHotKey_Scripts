#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
;#Warn   ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%
FileDelete, output.txt

FileOutput = %A_ScriptDir%\output.txt
Header = %A_ScriptDir%\header.txt
Beginnings = %A_ScriptDir%\beginnings.txt
Header2 = %A_ScriptDir%\header2.txt
Capitalization = %A_ScriptDir%\capitalization.txt
Capitalizetrans = %A_ScriptDir%\capitalizetrans.txt
Shorthand = %A_ScriptDir%\shorthand.txt
Shorthandtrans = %A_ScriptDir%\shorthandtrans.txt
Misspelling = %A_ScriptDir%\misspellings.txt

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

input := FileOpen(Beginnings, "r")
text := input.Read()
input.close()
file.write(text)

input := FileOpen(Header2, "r")
text := input.Read()
input.close()
file.write(text)

input := FileOpen(Capitalization, "r")
text := input.Read()
input.close()
file.write(text)

input := FileOpen(Capitalizetrans, "r")
text := input.Read()
input.close()
file.write(text)

input := FileOpen(Shorthand, "r")
text := input.Read()
input.close()
file.write(text)

input := FileOpen(Shorthandtrans, "r")
text := input.Read()
input.close()
file.write(text)

input := FileOpen(Misspelling, "r")
text := input.Read()
input.close()
file.write(text)
file.close()


FileDelete, E:\Dropbox\Lab\zSoftware\AutoHotKey_Scripts\Autocorrect\AutoCorrect.ahk
FileRead, OutputVar, output.txt
FileAppend, %Outputvar%, E:\Dropbox\Lab\zSoftware\AutoHotKey_Scripts\Autocorrect\AutoCorrect.ahk