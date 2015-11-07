#SingleInstance, force
#NoEnv
#Include, Utility.ahk

Trace("Starting Bootstrap.ahk")

threadsToStart := Object()
threadsToStart.Insert("new.ahk")
threadsToStart.Insert("new2.ahk")

for index, value in threadsToStart
{
    Trace("Starting " . value)
    Run, %value%
}

DetectHiddenWindows, On
SetTitleMatchMode, 2

OnExit, ExitSub
return

ExitSub:
for index, value in threadsToStart
{
    Trace("Closing " . value)
    if WinExist(value)
    {
        Trace("Need to close " . value)
        WinKill, %value%
    }
}