; ALT-TAB TURBO 
; AutoHotKey script for fast switching between apps
; Usage
;       1. Activate the script through AHK
;       2. At any time press Ctrl+Win+Alt+Key (key = 0 to 9 or a to z)
;          This stores current active window under Key
;       3. At any time press Win+Alt+Key (key = 0 to 9 or a to z)
;          This brings back into focus the window that was stored under Key
;
; Refer to https://www.autohotkey.com/docs/AutoHotkey.htm
;
; Created by Alin Popa
; Git: https://github.com/alin1popa/ahk-productivity-collection
; Licensed under MIT



#NoEnv
#SingleInstance force


WinIdArray := {}                        ; Holds AHK_ID for each stored window


Load_Window(key) {                      ; Load window from stored ID
    global WinIdArray                   ; Get global ID array
    active_id := WinIdArray[key]        ; Get window ID by key
    
    WinActivate, ahk_id %active_id%     ; Activate window by AHK_ID
}


Save_Window(key) {                      ; Store window ID
    WinGet, active_id, ID, A            ; Get AHK_ID of active window
    
    global WinIdArray                   ; Get global ID array
    WinIdArray[key] := active_id        ; Set window ID by key
}


; Hard-coded Save&Loads for each key
; not the most elegant way but
; Hotkey command supports only labels
; and you can't pass parameters to labels
; there may be a better way to do it though

; numbers - save
^#!1::Save_Window("1")
^#!2::Save_Window("2")
^#!3::Save_Window("3")
^#!4::Save_Window("4")
^#!5::Save_Window("5")
^#!6::Save_Window("6")
^#!7::Save_Window("7")
^#!8::Save_Window("8")
^#!9::Save_Window("9")
^#!0::Save_Window("0")
 
; numbers - load 
#!1::Load_Window("1") 
#!2::Load_Window("2") 
#!3::Load_Window("3") 
#!4::Load_Window("4") 
#!5::Load_Window("5") 
#!6::Load_Window("6") 
#!7::Load_Window("7") 
#!8::Load_Window("8") 
#!9::Load_Window("9") 
#!0::Load_Window("0") 
 
; letters - save
^#!a::Save_Window("a")
^#!b::Save_Window("b")
^#!c::Save_Window("c")
^#!d::Save_Window("d")
^#!e::Save_Window("e")
^#!f::Save_Window("f")
^#!g::Save_Window("g")
^#!h::Save_Window("h")
^#!i::Save_Window("i")
^#!j::Save_Window("j")
^#!k::Save_Window("k")
^#!l::Save_Window("l")
^#!m::Save_Window("m")
^#!n::Save_Window("n")
^#!o::Save_Window("o")
^#!p::Save_Window("p")
^#!q::Save_Window("q")
^#!r::Save_Window("r")
^#!s::Save_Window("s")
^#!t::Save_Window("t")
^#!u::Save_Window("u")
^#!v::Save_Window("v")
^#!w::Save_Window("w")
^#!x::Save_Window("x")
^#!y::Save_Window("y")
^#!z::Save_Window("z")

; letters - load
#!a::Load_Window("a") 
#!b::Load_Window("b") 
#!c::Load_Window("c") 
#!d::Load_Window("d") 
#!e::Load_Window("e") 
#!f::Load_Window("f") 
#!g::Load_Window("g") 
#!h::Load_Window("h") 
#!i::Load_Window("i") 
#!j::Load_Window("j") 
#!k::Load_Window("k") 
#!l::Load_Window("l") 
#!m::Load_Window("m") 
#!n::Load_Window("n") 
#!o::Load_Window("o") 
#!p::Load_Window("p") 
#!q::Load_Window("q") 
#!r::Load_Window("r") 
#!s::Load_Window("s") 
#!t::Load_Window("t") 
#!u::Load_Window("u") 
#!v::Load_Window("v") 
#!w::Load_Window("w") 
#!x::Load_Window("x") 
#!y::Load_Window("y") 
#!z::Load_Window("z") 
