#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
;#Warn   ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%
FileDelete, output.txt

; function

AppendFileContents(filePath, outputFile) {
    input := FileOpen(filePath, "r", "UTF-8")
    if (!IsObject(input)) {
        MsgBox, 16,, Can't open "%filePath%" for reading.
        return
    }
    text := input.Read()
    input.Close()
    outputFile.Write(text)
}


; preprocessing
; trim white space from db export

TF_WhiteSpace("!misspellings.txt", 0, 1)
TF_WhiteSpace("!grammar.txt", 0, 1)
TF_WhiteSpace("!capitalization.txt", 0, 1)

; import

FileOutput = %A_ScriptDir%\output.txt
Header = %A_ScriptDir%\header.txt
Grammar = %A_ScriptDir%\grammar.txt
Header2 = %A_ScriptDir%\header2.txt
Accent = %A_ScriptDir%\accent.txt
Accenttrans = %A_ScriptDir%\accenttrans.txt
Capitalization = %A_ScriptDir%\capitalization.txt
Capitalizetrans = %A_ScriptDir%\capitalizetrans.txt
Shorthand = %A_ScriptDir%\shorthand.txt
Shorthandtrans = %A_ScriptDir%\shorthandtrans.txt
Misspelling = %A_ScriptDir%\misspellings.txt

file := FileOpen(FileOutput,"a", "UTF-8")
if !IsObject(file)
{
	MsgBox Can't open "%FileOutput%" for appending.
	return
}

AppendFileContents(Header, file)
AppendFileContents(Grammar, file)
AppendFileContents(Header2, file)
; Uncomment the following lines if you wish to include these files in the output
; AppendFileContents(Accent, file)
; AppendFileContents(Accenttrans, file)
; AppendFileContents(Capitalization, file)
AppendFileContents(Capitalizetrans, file)
AppendFileContents(Shorthand, file)
AppendFileContents(Shorthandtrans, file)
AppendFileContents(Misspelling, file)


file.close()

FileDelete, %A_ScriptDir%\..\AutoCorrect.ahk
FileRead, OutputVar, output.txt
FileAppend, %Outputvar%, %A_ScriptDir%\..\AutoCorrect.ahk,UTF-8
Run, %A_ScriptDir%\..\AutoCorrect.ahk