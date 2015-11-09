#SingleInstance, force
#NoEnv
#Include, Utility.ahk
#Include, MouseGlobal.ahk

Trace("Starting ArrowMode.ahk")

RCtrl::
	Trace("ArrowMode on")
	SetIni("ArrowMode", true)
	KeyWait, RCtrl
	Trace("ArrowMode off")
	SetIni("ArrowMode", false)
return