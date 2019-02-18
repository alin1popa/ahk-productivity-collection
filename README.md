# alt-tab-turbo

## Collection of AutoHotKey scripts for improved productivity

### Usage
- Install AutoHotKey and activate the .ahk script through AutoHotKey. Alternatively, download and run the pre-compiled .exe for 32bit/64bit architecture, which already contains the AutoHotKey interpreter.
- To run the script on startup, paste a shortcut to the script in your startup folder (you can find it by using Win+R and typing "shell:startup", without quotation marks)

### Contents

#### Alt-Tab-Turbo: AHK script for fast switching between apps

How to use:
- At any time press Ctrl+Win+Alt+Key (Key = 0 to 9 or a to z). This stores current active window under Key
- At any time press Win+Alt+Key (Key = 0 to 9 or a to z). This brings back into focus the window that was stored under Key

Usage example:
- Open browser window
- Press Ctrl+Win+Alt+b
- Open some other app
- Press Win+Alt+b
- Now the focus is back to the browser

Notes:
- The purpose of this tool is to switch between windows more efficiently than it is when using Alt-Tab
- Best use case is when you have a lot of windows you use regularly but not necessarily in the same order

#### Multislot Clipboard: AHK script for copy-pasting with multiple slots

How to use:
- Select some text and press RightAlt+NumberKey (0 to 9). This copies the selected text into that number slot.
- Press LeftAlt+NumberKey (0 to 9). This pastes the contents of that slot.

Usage example:
- Select some text
- Press RAlt+5
- Select some other text
- Press RAlt+8
- Now you can paste the first text using LAlt+5 and the second text using LAlt+8

Notes:
- Be warned that when whenever you use this, the text you copied or pasted also gets copied to the regular clipboard, overwriting its contents
- This does not interfere with other clipboard manager software you might use

### AHK Documentation
Refer to https://www.autohotkey.com/docs/AutoHotkey.htm

### License
Everything here is licensed under MIT
