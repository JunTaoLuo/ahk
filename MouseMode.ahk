#SingleInstance, force
#NoEnv
#Include, Utility.ahk
#Include, MouseGlobal.ahk

Trace("Starting MouseMode.ahk")

RAlt::
	Trace("MouseMode on")
	SetIni("MouseMode", true)
	KeyWait, Ralt
	Trace("MouseMode off")
	SetIni("MouseMode", false)
Return