#SingleInstance, force
#NoEnv
#Include, Utility.ahk
#Include, MouseGlobal.ahk

Trace("Starting ProcessUp.ahk")

*l::
	Trace("Processing Up: MouseMode " GetIni("MouseMode") " MAltMode " GetIni("MAltMode") " ArrowMode " GetIni("ArrowMode"))
	if (GetIni("MouseMode") and GetIni("MAltMode"))
	{
		Send, {WheelDown}
	}
	else if (GetIni("ArrowMode"))
	{
		Send, {Blind}{Down}
	}
	else if (GetIni("MouseMode"))
	{
		MouseMove, 0, 10, 0, R
	}
	else
	{
		Trace("Sending the raw character")
		Send, {Blind}l
	}
return