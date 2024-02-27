#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
;#Warn   ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%

; Delete Old Backup
FileDelete, %A_ScriptDir%\import_mis.txt.bak
FileDelete, %A_ScriptDir%\import_gram.txt.bak
FileDelete, %A_ScriptDir%\import_names.txt.bak
FileDelete, %A_ScriptDir%\import_flags.txt.bak

; Create Backups
FileRead, backup, %A_ScriptDir%\import_mis.txt
FileAppend, %backup%, %A_ScriptDir%\import_mis.txt.bak

FileRead, backup, %A_ScriptDir%\import_gram.txt
FileAppend, %backup%, %A_ScriptDir%\import_gram.txt.bak

FileRead, backup, %A_ScriptDir%\import_names.txt
FileAppend, %backup%, %A_ScriptDir%\import_names.txt.bak

FileRead, backup, %A_ScriptDir%\import_flags.txt
FileAppend, %backup%, %A_ScriptDir%\import_flags.txt.bak

; Delete Files
FileDelete, %A_ScriptDir%\import_mis.txt
FileDelete, %A_ScriptDir%\import_gram.txt
FileDelete, %A_ScriptDir%\import_names.txt
FileDelete, %A_ScriptDir%\import_flags.txt

; Replace with Templates
FileRead, Template, %A_ScriptDir%\TemplateIO.txt
FileAppend, %Template%, %A_ScriptDir%\import_gram.txt
FileAppend, %Template%, %A_ScriptDir%\import_mis.txt

FileRead, Template, %A_ScriptDir%\TemplateI.txt
FileAppend, %Template%, %A_ScriptDir%\import_names.txt
FileAppend, %Template%, %A_ScriptDir%\import_flags.txt