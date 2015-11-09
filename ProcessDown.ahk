#SingleInstance, force
#NoEnv
#Include, Utility.ahk
#Include, MouseGlobal.ahk

Trace("Starting ProcessDown.ahk")

*o::
	Trace("Processing Down: MouseMode " GetIni("MouseMode") " MAltMode " GetIni("MAltMode") " ArrowMode " GetIni("ArrowMode"))
	if (GetIni("MouseMode") and GetIni("MAltMode"))
	{
		Send, {WheelUp}
	}
	else if (GetIni("ArrowMode"))
	{
		Send, {Blind}{Up}
	}
	else if (GetIni("MouseMode"))
	{
		MouseMove, 0, -10, 0, R
	}
	else
	{
		Trace("Sending the raw character")
		Send, {Blind}o
	}
return