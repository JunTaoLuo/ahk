#SingleInstance, force
#NoEnv
#Include, Utility.ahk
#Include, MouseGlobal.ahk

Trace("Starting ProcessLeft.ahk")

*k::
	Trace("Processing Left: MouseMode " GetIni("MouseMode") " MAltMode " GetIni("MAltMode") " ArrowMode " GetIni("ArrowMode"))
	if (GetIni("MouseMode") and GetIni("MAltMode"))
	{
		Send, {XButton1}
	}
	else if (GetIni("ArrowMode"))
	{
		Send, {Blind}{Left}
	}
	else if (GetIni("MouseMode"))
	{
		MouseMove, -10, 0, 0, R
	}
	else
	{
		Trace("Sending the raw character")
		Send, {Blind}k
	}
return