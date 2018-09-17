#SingleInstance force
Gui, Color, 42eef4
Gui, 1:Margin, 0, 3
; GUI, 1:+AlwaysOnTop -Border -SysMenu +Owner -Caption
GUI, 1:+AlwaysOnTop +Owner -Border
Gui, Add, Edit, vSearching  ; The ym option starts a new column of controls.
; Gui, Add, Button, default, OK  ; The label ButtonOK (if it exists) will be run when the button is pressed.

; Gui, Add, Button, default, Cancel
Gui, Show,, 
return  ; End of auto-execute section. The script is idle until the user does something.

Results:
Gui, Submit  ; Save the input from the user to each control's associated variable.
if(Searching != null)
	run, chrome.exe https://www.google.com/search?newwindow=1&q="%Searching%"
GuiClose:
; ButtonCancel:
ExitApp

Esc::ExitApp
Enter::
Goto, Results
return