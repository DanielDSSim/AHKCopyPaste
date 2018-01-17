#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

^j::
	run, notepad InfoTxt.txt 
	InputBox, OP_TYPE, Preload OP, Input OP code according to operation desired(Found in InfoTxt.txt), , , , 1000, 100
	Arr := {a1:[1, 1, 0, 1, 1, 0],a2:[2],a3:[3]}
	Process, Close, notepad.exe
	MsgBox, 0, Preload Instructions , Drag Source file to the LEFT most corner and press "OK"
	MsgBox, 0, Preload Instructions , Drag Destination file to the RIGHT most corner and press "OK"
	
	i = 1
	loop, 6 {
		If (Arr.a1[i] > 0) {
			MsgBox , 0, Value of i, % i
			}
		i++
		}
return 