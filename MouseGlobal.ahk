#SingleInstance, force
#NoEnv
#Include, Global.ahk

; Clear the contents of the old ini file
IfExist, %IniFile%
	FileDelete, %IniFile%
FileAppend, , %IniFile%

; Write default values for variable in ini file
IniWrite, 0, %IniFile%, Mouse, ArrowMode
IniWrite, 0, %IniFile%, Mouse, MouseMode
IniWrite, 0, %IniFile%, Mouse, MAltMode

SetIni(iniName, value)
{
	Trace("Setting ini " iniName " to " value)
	global IniFile
	IniWrite, %value%, %IniFile%, Mouse, %iniName%
}
GetIni(iniName)
{
	global IniFile
	IniRead, iniVal, %IniFile%, Mouse, %iniName%, 0
	return %iniVal%
}