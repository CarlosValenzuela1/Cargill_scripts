#SingleInstance Force

; Structure Example: Pass to FillRect() the address of a RECT structure that indicates a part of the
; screen to temporarily paint red.

Pause::
	VarSetCapacity(Rect, 16, 0)  ; Set capacity to hold four 4-byte integers and initialize them all to zero.
	doubledWidth := A_ScreenWidth + A_ScreenWidth
	NumPut(doubleWidth, Rect, 8, "Int64")  ; The third integer in the structure is "rect.right".
	NumPut(A_ScreenHeight//2, Rect, 12, "Int") ; The fourth integer in the structure is "rect.bottom".
	; Number1:= NumGet(&Rect, 0, "Int")
	; Number2:= NumGet(&Rect, 2, "Int")
	; Number2:= NumGet(&Rect, 4, "Int")
	Number3:= NumGet(&Rect, 8, "Int")
	Number4:= NumGet(&Rect, 12, "Int")
	MsgBox,  %Number3% %Number4%
	hDC := DllCall("GetDC", "Ptr", 0, "Ptr")  ; Pass zero to get the desktop's device context.
	hBrush := DllCall("CreateSolidBrush", "UInt", 0x0000FF, "Ptr")  ; Create a red brush (0x0000FF is in BGR format).
	 DllCall("FillRect", "Ptr", hDC, "Ptr", &Rect, "Ptr", hBrush)  ; Fill the specified rectangle using the brush above.
	DllCall("ReleaseDC", "Ptr", 0, "Ptr", hDC)  ; Clean-up.
	DllCall("DeleteObject", "Ptr", hBrush)  ; Clean-up.
Return

PrintScreen::
	Number:= NumGet(Rect, 0, "Int")
	MsgBox, %Number%
Return

ESC::ExitApp

~LCtrl & s::
	send ^s
	Reload
return