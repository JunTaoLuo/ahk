#SingleInstance, force
#NoEnv
#Include, Global.ahk

Trace(message)
{
	global Debug
	global LogFile
	if Debug
		MsgBox, %message%`n
	FileAppend, %message%`n, %LogFile%
}