#SingleInstance, force
#NoEnv

SetWorkingDir,%A_ScriptDir%

LogFile := "Debug.log"

Trace(message)
{
	global LogFile
	MsgBox, %message%`n
	FileAppend, %message%`n, %LogFile%
}