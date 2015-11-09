#SingleInstance, force
#NoEnv
#Include, Utility.ahk
#Include, MouseGlobal.ahk

Trace("Starting ProcessRight.ahk")

*`;::
	Trace("Processing Right: MouseMode " GetIni("MouseMode") " MAltMode " GetIni("MAltMode") " ArrowMode " GetIni("ArrowMode"))
	if (GetIni("MouseMode") and GetIni("MAltMode"))
	{
		Send, {XButton2}
	}
	else if (GetIni("ArrowMode"))
	{
		Send, {Blind}{Right}
	}
	else if (GetIni("MouseMode"))
	{
		MouseMove, 10, 0, 0, R
	}
	else
	{
		Trace("Sending the raw character")
		Send, {Blind}`;
	}
return