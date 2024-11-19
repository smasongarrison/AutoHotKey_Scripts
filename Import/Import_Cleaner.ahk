#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
;#Warn   ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%

; Backup and delete old files individually
FileRead, misContent, %A_ScriptDir%\import_mis.txt
if (ErrorLevel) {
    MsgBox, Failed to read import_mis.txt
} else {
    FileDelete, %A_ScriptDir%\import_mis.txt.bak
    FileAppend, %misContent%, %A_ScriptDir%\import_mis.txt.bak
    FileDelete, %A_ScriptDir%\import_mis.txt
}

FileRead, gramContent, %A_ScriptDir%\import_gram.txt
if (ErrorLevel) {
    MsgBox, Failed to read import_gram.txt
} else {
    FileDelete, %A_ScriptDir%\import_gram.txt.bak
    FileAppend, %gramContent%, %A_ScriptDir%\import_gram.txt.bak
    FileDelete, %A_ScriptDir%\import_gram.txt
}

FileRead, namesContent, %A_ScriptDir%\import_names.txt
if (ErrorLevel) {
    MsgBox, Failed to read import_names.txt
} else {
    FileDelete, %A_ScriptDir%\import_names.txt.bak
    FileAppend, %namesContent%, %A_ScriptDir%\import_names.txt.bak
    FileDelete, %A_ScriptDir%\import_names.txt
}

FileRead, flagsContent, %A_ScriptDir%\import_flags.txt
if (ErrorLevel) {
    MsgBox, Failed to read import_flags.txt
} else {
    FileDelete, %A_ScriptDir%\import_flags.txt.bak
    FileAppend, %flagsContent%, %A_ScriptDir%\import_flags.txt.bak
    FileDelete, %A_ScriptDir%\import_flags.txt
}


; Read template and apply to files
FileRead, commonTemplate, %A_ScriptDir%\TemplateIO.txt
if (ErrorLevel) {
    MsgBox, Failed to read TemplateIO.txt
} else {
    FileAppend, %commonTemplate%, %A_ScriptDir%\import_gram.txt
    FileAppend, %commonTemplate%, %A_ScriptDir%\import_mis.txt
}

FileRead, specificTemplate, %A_ScriptDir%\TemplateI.txt
if (ErrorLevel) {
    MsgBox, Failed to read TemplateI.txt
} else {
    FileAppend, %specificTemplate%, %A_ScriptDir%\import_names.txt
    FileAppend, %specificTemplate%, %A_ScriptDir%\import_flags.txt
}