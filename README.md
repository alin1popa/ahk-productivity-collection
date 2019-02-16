# alt-tab-turbo

## AutoHotKey script for fast switching between apps

### Usage
1. Install AutoHotKey and activate the .ahk script through AutoHotKey. Alternatively, download and run the pre-compiled .exe for 32bit/64bit architecture, which already contains the AutoHotKey interpreter.
2. At any time press Ctrl+Win+Alt+Key (key = 0 to 9 or a to z). This stores current active window under Key
3. At any time press Win+Alt+Key (key = 0 to 9 or a to z). This brings back into focus the window that was stored under Key
4. To run the script on startup, paste a shortcut to the script in your startup folder (you can find it by using Win+R and typing "shell:startup", without quotation marks)

Usage example:
- Open browser window
- Press Ctrl+Win+Alt+b
- Open some other app
- Press Win+Alt+b
- Now the focus is back to the browser

### The why
I built it as a productivity tool. Having a few reliable key bindings seems more efficient to me than using Alt-Tab and searching through tens of windows with mouse and arrow keys.

### AHK Documentation
Refer to https://www.autohotkey.com/docs/AutoHotkey.htm

### License
Licensed under MIT
