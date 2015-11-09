#SingleInstance, force
#NoEnv

; Settings

Debug := false

; Files

LogFile := "Debug.log"
IniFile := "Global.ini"

; Definitions

Services := Object()
Services.Insert("MainBindings.ahk")
Services.Insert("MouseMode.ahk")
Services.Insert("ArrowMode.ahk")
Services.Insert("MAltMode.ahk")
Services.Insert("ProcessUp.ahk")
Services.Insert("ProcessLeft.ahk")
Services.Insert("ProcessDown.ahk")
Services.Insert("ProcessRight.ahk")