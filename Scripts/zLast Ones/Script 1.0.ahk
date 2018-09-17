#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

^PrintScreen:: RunWait, %A_WinDir%\system32\SnippingTool.exe

:*:ccc::C760912{TAB}Mex0012345{ENTER}

:*:rrr::C760912{TAB}Rus2000{!}{ENTER}

:*:mmm::art.z{@}tcs.com{TAB}Mex0040{!}{ENTER}

:*:kkk::EMEA{_}ACDADMIN{@}CARGILL.ngcc.bt.com{TAB}tcs{#}1234567890{ENTER}

:*:chh::Supervisor1{@}crgl-thirdparty.com{TAB}Ioucd{@}321{ENTER}

::general1::
send Name User: 
send {enter}{enter}
send When the problem started: 
Send, %A_DD%-%A_MM%-%A_YYYY% %A_Hour%:%A_Min%
return

:*:uuu::1248463{TAB}Mex0038{!}{ENTER}

:*:ddd::
send %A_MM%{/}%A_DD%{/}%A_YYYY% 
return

:*:yyy::  
	;today = %a_now%
	datestring = %a_now%
	StringSplit, d, datestring, /
	date := d3 d1 d2
	FormatTime, day_of_Week, %date%, ddd
	dayName = %day_of_week%

	FormatTime, day_of_Week, %date%, d
	day = %day_of_week%

	if (dayName = "Sun")
		datestring += -2, days
	else if (dayName = "Mon")
		datestring += -3, days
	else if (dayName = "Tue")
		datestring += -1, days
	else if (dayName = "Wed")
		datestring += -1, days
	else if (dayName = "Thu")
		datestring += -1, days
	else if (dayName = "Fri")
		datestring += -1, days
	else if (dayName = "Sat")
		datestring += -1, days

;FormatTime, today, %today%, MM/dd/yy 
FormatTime, datestring, %datestring%, MM/dd/yy
SendInput %datestring%
return

#r::
run, explorer C:\Users\%A_UserName%\Documents\Reports\Daily\2017
WinActivate, Desktop
return

#m::
run, explorer C:\Users\%A_UserName%\Documents\Reports\Monthly\2017
WinActivate, Desktop
return

#e::
run, explorer C:\Users\%A_UserName%\Desktop\
WinActivate, Desktop
return

;Unhide sheets in Excell
#h::
send, {alt}
sleep 10
send, {o}
sleep 10
send, {h}
sleep 10
send, {u}
return

::btt::BUD003{@}cargill{.}ngcc{.}bt{.}com{TAB}tcs{#}12345{ENTER}


Shift & WheelUp:: 
	; Scroll to the left
	MouseGetPos,,,id, fcontrol,1
	Loop 8 ; <-- Increase for faster scrolling
		SendMessage, 0x114, 0, 0, %fcontrol%, ahk_id %id% ; 0x114 is WM_HSCROLL and the 0 after it is SB_LINERIGHT.
return
 
Shift & WheelDown:: 
	;Scroll to the right
	MouseGetPos,,,id, fcontrol,1
	Loop 8 ; <-- Increase for faster scrolling
		SendMessage, 0x114, 1, 0, %fcontrol%, ahk_id %id% ;  0x114 is WM_HSCROLL and the 1 after it is SB_LINELEFT.
return

^#v::                            ; Text–only paste from ClipBoard
   Clip0 = %ClipBoardAll%
   ClipBoard = %ClipBoard%       ; Convert to text
   Send ^v                       ; For best compatibility: SendPlay
   Sleep 50                      ; Don't change clipboard while it is pasted! (Sleep > 0)
   ClipBoard = %Clip0%           ; Restore original ClipBoard
   VarSetCapacity(Clip0, 0)      ; Free memory
Return