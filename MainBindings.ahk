#SingleInstance force
#NoEnv
#Include, Utility.ahk

Trace("Starting MainBindings.ahk")

; Swap LCtrl and LAlt

*LCtrl:: ; NEEDS '*' because LCtrl key-repeat is otherwise interpreted as ALT+LCtrl.
    CtrlTabbed := false
    Hotkey, *Tab, CtrlTab, On   ; Begin Ctrl+Tab (and release Alt) when we press Tab.
    Send {Alt Down}             ; Press Alt (LCtrl::Alt)
    KeyWait, LCtrl
    if CtrlTabbed
        Send {Ctrl Up}          ; Release Ctrl after Ctrl+Tabbing.
    else
        Send {Alt Up}           ; Release Alt (LCtrl::Alt)
    Hotkey, *Tab, CtrlTab, Off
return

CtrlTab:
    if (!CtrlTabbed) {
        Send {Alt Up}           ; Release Alt now.
        Send {Ctrl Down}        ; Press down Ctrl.
        CtrlTabbed := true      ; Set a flag so we know to release Ctrl instead of Alt.
    }
    Send {Blind}{Tab}           ; Press Tab without releasing any modifiers.
return

*LAlt:: ; NEEDS '*' because LAlt key-repeat is otherwise interpreted as CTRL+LAlt.
    AltTabbed := false
    Hotkey, *Tab, AltTab, On    ; Begin Alt+Tab (and release Ctrl) when we press Tab.
    Send {Ctrl Down}            ; Press Ctrl (LAlt::Ctrl)
    KeyWait, LAlt
    if AltTabbed
        Send {Alt Up}           ; Release Alt after Alt+Tabbing.
    else
        Send {Ctrl Up}          ; Release Ctrl (LAlt::Ctrl)
    Hotkey, *Tab, AltTab, Off
return

AltTab:
    if (!AltTabbed) {
        Send {Ctrl Up}          ; Release Ctrl now.
        Send {Alt Down}         ; Press down Alt. (Keeps the Alt+Tab menu open.)
        AltTabbed := true       ; Set a flag so we know to release Alt instead of Ctrl.
    }
    Send {Blind}{Tab}           ; Press Tab without releasing any modifiers.
return

; Map CtrlQ to AltF4

^q::Send {Ctrl Up}!{F4}{Ctrl Down}

; Map TabAlt to CtrlTab

Tabbing := false

$Tab::
    if (Tabbing)
    {
        return
    }
    else
    {
        Tabbing := true
        Tabbed := false
        Hotkey, LAlt, TabCtrl, On
        
        KeyWait, Tab
        if (!Tabbed)
        Send {Tab}
        
        Hotkey, LAlt, TabCtrl, Off
        Tabbing := False
    }
return

TabCtrl:
    Tabbed := true
    Send ^{Tab}
return

/*
; Modifier Modes

; Mapping keys 


+>^p:: Send, +{Up}
+>^l:: Send, +{Left}
+>^`;:: Send, +{Down}
+>^':: Send, +{Right}

; Mapping forward and backward for browsers

<+>!l:: Send, {XButton1}
<+>!':: Send, {XButton2}

; Mapping scroll

<+>!p:: Send, {WheelUp}
<+>!`;:: Send, {WheelDown}

; Mapping movement

>!p:: MouseMove, 0, -25, 0, R ; up
>!l:: MouseMove, -25, 0, 0, R ; left
>!`;:: MouseMove, 0, 25, 0, R ; down
>!':: MouseMove, 25, 0, 0, R ; right
*/
; Mapping clicks
/*
>!k::
SendEvent, {Blind}{LButton down}
KeyWait, k, {Blind}{LButton up}
Return
>!m:: 
SendEvent, {Blind}{RButton down}
KeyWait, m, {Blind}{RButton up}
Return
*/