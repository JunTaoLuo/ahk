#SingleInstance, force
#NoEnv
#Include, Utility.ahk
#Include, MouseGlobal.ahk

Trace("Starting MAltMode.ahk")

LShift::
	Trace("MAltMode on")
	SetIni("MAltMode", true)
	Send, {LShift Down}
	KeyWait, LShift
	Trace("MAltMode off")
	SetIni("MAltMode", false)
	Send, {LShift Up}
Return