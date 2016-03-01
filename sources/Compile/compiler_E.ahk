FileDelete, output.txt
FileRead, OutputVar, header.txt
FileAppend, %Outputvar%, output.txt
FileRead, OutputVar, beginnings.txt
FileAppend, %Outputvar%, output.txt
FileRead, OutputVar, header2.txt
FileAppend, %Outputvar%, output.txt
FileRead, OutputVar, capitalization.txt
FileAppend, %Outputvar%, output.txt
FileRead, OutputVar, capitalizetrans.txt
FileAppend, %Outputvar%, output.txt
FileRead, OutputVar, shorthand.txt
FileAppend, %Outputvar%, output.txt
FileRead, OutputVar, shorthandtrans.txt
FileAppend, %Outputvar%, output.txt
FileRead, OutputVar, mispelling.txt
FileAppend, %Outputvar%, output.txt

FileDelete, E:\Dropbox\Lab\zSoftware\AutoHotKey_Scripts\Autocorrect\AutoCorrect.ahk
FileRead, OutputVar, output.txt
FileAppend, %Outputvar%, E:\Dropbox\Lab\zSoftware\AutoHotKey_Scripts\Autocorrect\AutoCorrect.ahk