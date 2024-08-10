#Requires AutoHotkey v2.0

; Ctrl + Alt + P without Shift
^!p:: {
    if !WinActive("ahk_exe rider64.exe") {
        WinActivate("ahk_exe rider64.exe")
    } else {
        WinActivate("ahk_exe Godot_v4.2.2-stable_mono_win64.exe")
    }
    return
}

; Ctrl + Alt + Shift + P
^!+p:: {
    if !WinActive("ahk_exe Aseprite.exe") {
        WinActivate("ahk_exe Aseprite.exe")
    } else {
        WinActivate("ahk_exe Discord.exe")
    }
    return
}
