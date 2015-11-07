#SingleInstance, force
#NoEnv
#Include, Utility.ahk

SetWorkingDir,%A_ScriptDir%

threadsToStart := Object()
threadsToStart.Insert("new.ahk")
threadsToStart.Insert("new2.ahk")

for index, value in threadsToStart
{
    Trace("Starting " . value)
    Run, %value%
}

OnExit, ExitSub
return

ExitSub:
for index, value in threadsToStart
{
    Trace("Closing " . value)
    if (Process, Exist, value)
    {
        Trace("NeedToClose " . value)
        Process, Close, %value%
    }
}