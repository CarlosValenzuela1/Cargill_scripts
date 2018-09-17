#SingleInstance force
CoordMode, Mouse, Screen
MouseGetPos, mousex, mousey

Gui, Color, 42eef4
Gui, 1:Margin, 5, 3
; GUI, 1:+AlwaysOnTop -Border -SysMenu +Owner -Caption
GUI, 1:+AlwaysOnTop +Owner -Border
Gui, Add, Edit, vSearching  ; The ym option starts a new column of controls.
; Gui, Add, Button, default, OK  ; The label ButtonOK (if it exists) will be run when the button is pressed.
mousex := mousex - 68
mousey := mousey - 16
; MsgBox, "This is mouseX " %mousex% "This is mouseY " %mousey%
; Gui, Add, Button, default, Cancel
Gui, Show, x%mousex% y%mousey% 
return  ; End of auto-execute section. The script is idle until the user does something.

Results:
Gui, Submit  ; Save the input from the user to each control's associated variable.
if(Searching != null)
	run, chrome.exe https://duckduckgo.com/?q="%searching%"
GuiClose:
; ButtonCancel:
ExitApp

Esc::ExitApp
Enter::
Goto, Results
return