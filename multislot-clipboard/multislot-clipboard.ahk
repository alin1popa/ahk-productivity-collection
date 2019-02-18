; MULTI-SLOT CLIPBOARD 
; AutoHotKey script for multislot copy-paste
; Usage
;       1. Activate the script through AHK
;       2. Select some text
;       3. RAlt + NumberKey to copy selected text into that key's slot
;       4. LAlt + NumberKey to paste text from that key's slot
; Warning: copying and pasting from any slot also puts the text from that slot
; into the clipboard
;
; Refer to https://www.autohotkey.com/docs/AutoHotkey.htm
;
; Created by Alin Popa
; Git: https://github.com/alin1popa/ahk-productivity-collection
; Licensed under MIT


#NoEnv
#SingleInstance force


ClipboardSlots := []                    ; Holds clipboard contents 
                                        ; for each slot
                                        
Copy_To_Slot(nr) {                      ; Copy selected text to nr-th slot
    Send, ^c                            ; Send Ctrl+C to copy to clipboard
    global ClipboardSlots               ; Get global clipboard array
    ClipboardSlots[nr] := clipboard     ; Save clipboard to global array
}

Paste_From_Slot(nr) {                   ; Paste from nr-th slot
    global ClipboardSlots               ; Get global clipboard array
    clipboard := ClipboardSlots[nr]     ; Copy to clipboard from array
    Send, ^v                            ; Send Ctrl+V to paste
}


; Bind above functions to each number
; Right Alt + Number to copy
; Left Alt + Number to paste
; To remove binding for one number key comment both its lines with semicolons

>!1::Copy_To_Slot(1)
<!1::Paste_From_Slot(1)

>!2::Copy_To_Slot(2)
<!2::Paste_From_Slot(2)

>!3::Copy_To_Slot(3)
<!3::Paste_From_Slot(3)

>!4::Copy_To_Slot(4)
<!4::Paste_From_Slot(4)

>!5::Copy_To_Slot(5)
<!5::Paste_From_Slot(5)

>!6::Copy_To_Slot(6)
<!6::Paste_From_Slot(6)

>!7::Copy_To_Slot(7)
<!7::Paste_From_Slot(7)

>!8::Copy_To_Slot(8)
<!8::Paste_From_Slot(8)

>!9::Copy_To_Slot(9)
<!9::Paste_From_Slot(9)

>!0::Copy_To_Slot(0)
<!0::Paste_From_Slot(0)