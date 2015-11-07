#SingleInstance, force
#NoEnv
#Persistent
#Include, Global.ahk
#Include, Utility.ahk

Trace("Starting Bootstrap.ahk")

for index, value in Services
{
    Trace("Lauching " . value)
    Run, %value%
}

DetectHiddenWindows, On
SetTitleMatchMode, 2

OnExit, ExitSub
return

ExitSub:
for index, value in Services
{
    Trace("Closing " . value)
    if WinExist(value)
    {
        Trace("Need to close " . value)
        WinKill, %value%
    }
}
ExitApp