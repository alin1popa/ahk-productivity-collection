
ClipboardSlots := []

Copy_To_Slot(nr) {
    Send, ^c
    global ClipboardSlots
    ClipboardSlots[nr] := clipboard
}

Paste_From_Slot(nr) {
    global ClipboardSlots
    clipboard := ClipboardSlots[nr]
    Send, ^v
}

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