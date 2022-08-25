#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

!F10::
    toggle := !toggle

    if toggle
    {
        Run %ComSpec% /k pnputil /disable-device "HID\SYNA3085&COL02\5&1BA2CDF&0&0001" ,,Hide
    } 
    else
    {
        Run %ComSpec% /k pnputil /enable-device "HID\SYNA3085&COL02\5&1BA2CDF&0&0001" ,,Hide
    }
