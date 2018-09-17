
;=========================================================================================================;
; Netas Script: This script gathers specific data from Netasthra:   					  ; 
; • Incident Distribution										  ;
; • Service Request Distribution 									  ;
; • Misrouted Tickets 									  		  ;
; • Misrouted Service Request	 									  ;
;=========================================================================================================;
; Description of each method will be find below.							  ;
; Version: 1.0												  ;
; Author: Carlos Valenzuela										  ;
; Company: TATA Consultancy Services									  ;
;=========================================================================================================;

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance Force
#Persistent
#MaxThreadsPerHotkey 1
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.


SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
return













Scrolllock::Pause

PrintScreen::Suspend

Insert::
Reload

Pause::
InputBox, Var, Reports Script, • SD Incident Distribution "inc" `n• SD Service Request "sr" `n• Misrouted Incidents "miss1" `n• Missrouted Service Request "miss2" `n• EUC Incident Distrubition "eucinc"`n• EUC Service Request "eucsr"`n• Agent State "state"`n• Queue Statistics "statistics"  `n• Queues by Agent "qagent"  `n• Chat Reports "chat"  `n• ScoreCard "reported" `n• KPI State Filter "state filter" `n• Statistics Filter "statistics filter" `n• Queues by Agent Filter "qagent filter" `n• COLS for filtering cols `n• TEST, , 250, 450

if (Var = "inc")
{
	InputBox, fecha, Date, Please type the date of the report you would like to get: "MM/DD/YYYY" , , 450, 125
	CoordMode, Mouse, Screen
	mainMethodIncidentSD()
} 
else if (Var = "sr")
{
	InputBox, fecha, Date, Please type the date of the report you would like to get: "MM/DD/YYYY" , , 450, 125
	CoordMode, Mouse, Screen
	mainMethodServiceSD()
}
else if (Var = "miss1")
{
	;InputBox, fecha, Date, Please type the date of the report you would like to get: "MM/DD/YYYY" , , 450, 125
	CoordMode, Mouse, Screen
	mainMethodMiss1()
}
else if (Var = "miss2")
{
	;InputBox, fecha, Date, Please type the date of the report you would like to get: "MM/DD/YYYY" , , 450, 125
	CoordMode, Mouse, Screen
	mainMethodMiss2()
}
else if (Var = "state")
{
	InputBox, fecha, Date, START type the date of the report you would like to get: "MM/DD/YYYY" , , 450, 125
	InputBox, ayer, Date, END type the date of the report you would like to get: "MM/DD/YYYY" , , 450, 125
	CoordMode, Mouse, Screen
	mainMethodState()
}
else if (Var = "statistics")
{
	InputBox, fecha, Date, START type the date of the report you would like to get: "MM/DD/YYYY" , , 450, 125
	InputBox, ayer, Date, END type the date of the report you would like to get: "MM/DD/YYYY" , , 450, 125
	CoordMode, Mouse, Screen
	mainMethodStatistics()
}
else if (Var = "qagent") 
{
	InputBox, fecha, Date, START type the date of the report you would like to get: "MM/DD/YYYY" , , 450, 125
	InputBox, ayer, Date, END type the date of the report you would like to get: "MM/DD/YYYY" , , 450, 125
	CoordMode, Mouse, Screen
	mainMethodqagent()
}
else if (Var = "chat")
{
	InputBox, fecha, Date, START type the date of the report you would like to get: "MM/DD/YYYY" , , 450, 125
	mainMethodChat()
}
else if (Var = "reported")
{
	InputBox, fecha, Date, START type the month of the report you would like to get: "January" , , 450, 125
	mainMethodReported()

}
else if (Var = "state filter")
{
	CoordMode, Mouse, Screen
	InputBox, fecha, Date, START type the date of the report you would like to get: "MM/DD/YYYY" , , 450, 125
	kpiStateFilter()
}
else if (Var = "statistics filter")
{
	send hello
	Input, SingleKey, L1, {right}
	send how
	Input, SingleKey, L1, {right}
	send are
	Input, SingleKey, L1, {right}
	send you?
}
else if (Var = "qagent filter")
{
	send hello
	Input, SingleKey, L1, {right}
	send how
	Input, SingleKey, L1, {right}
	send are
	Input, SingleKey, L1, {right}
	send you?
}
else if (Var = "test")
{
	CoordMode, Mouse, Screen
	MouseClick, left, 1999, 196			;Click on the Eye (add/remove columns)
	sleep 500
	send {TAB 4}{SPACE}{space}

	send {Shift down}{tab}{shift up}
	send status
	send {tab 2}{space}{shift down}{tab 2}{shift up}
	send assignedgroup
	send {tab 7}{space}{shift down}{tab 7}{shift up}
	send assignedto
	send {tab 2}{space}{shift down}{tab 2}{shift up}
	send arrivaldate
	send {tab 2}{space}{shift down}{tab 2}{shift up}
	send modifieddate
	send {tab 2}{space}{shift down}{tab 2}{shift up}
	send description
	send {tab 2}{space}{shift down}{tab 2}{shift up}
	send createdby
	send {tab 2}{space}{shift down}{tab 2}{shift up}
	send resolveddate
	send {tab 2}{space}{shift down}{tab 2}{shift up}
	send closeddate
	send {tab 2}{space}{shift down}{tab 2}{shift up}
	send source
	send {tab 2}{space}{shift down}{tab 2}{shift up}
	send priority
	send {tab 2}{space}{shift down}{tab 2}{shift up}
	send country
	send {tab 2}{space}{shift down}{tab 2}{shift up}
	send location
	send {tab 2}{space}{shift down}{tab 2}{shift up}
	MouseClick, left, 2818, 811

}
else if (Var = "cols")
{
	CoordMode, Mouse, Screen	
	sleep 200
	send {TAB 4}{SPACE}{space}

	send {Shift down}{tab}{shift up}
	send status
	send {tab 2}{space}{shift down}{tab 2}{shift up}
	send assignedgroup
	send {tab 7}{space}{shift down}{tab 7}{shift up}
	send assignedto
	send {tab 2}{space}{shift down}{tab 2}{shift up}
	send arrivaldate
	send {tab 2}{space}{shift down}{tab 2}{shift up}
	send modifieddate
	send {tab 2}{space}{shift down}{tab 2}{shift up}
	send description
	send {tab 2}{space}{shift down}{tab 2}{shift up}
	send createdby
	send {tab 2}{space}{shift down}{tab 2}{shift up}
	send resolveddate
	send {tab 2}{space}{shift down}{tab 2}{shift up}
	send closeddate
	send {tab 2}{space}{shift down}{tab 2}{shift up}
	send source
	send {tab 2}{space}{shift down}{tab 2}{shift up}
	send priority
	send {tab 2}{space}{shift down}{tab 2}{shift up}
	send country
	send {tab 2}{space}{shift down}{tab 2}{shift up}
	send location
	send {tab 2}{space}{shift down}{tab 2}{shift up}
	MouseClick, left, 2818, 811
}
else
{
	;filterdate()
}






filterDate()
{
	selectMonth()
	countWhites()
	sleep 100
	selectDay()
}


selectMonth()
{
	global fecha
	loop = 0
	while(loop=0)
{
	CoordMode, Mouse, Screen
	clipboard = 
	monthValue = 0
	datestring = %fecha%
	StringSplit, d, datestring, /
	date := d1
	FormatTime, typedMonth, %date%, MM
	typedMonth = %date%
	MouseClick, left, 2850, 205
	MouseClick, left, 2850, 205
	send ^c
	ClipWait
	monthRequested = %clipboard%
	
	if (monthRequested = "January")  
		monthValue = 01
	else if (monthRequested = "February")  
		monthValue = 02
	else if (monthRequested = "March")  
		monthValue = 03
	else if (monthRequested = "April")  
		monthValue = 04
	else if (monthRequested = "May")  
		monthValue = 05
	else if (monthRequested = "June")  
		monthValue = 06
	else if (monthRequested = "July")  
		monthValue = 07
	else if (monthRequested = "August")  
		monthValue = 08
	else if (monthRequested = "September")  
		monthValue = 09
	else if (monthRequested = "October")  
		monthValue = 10
	else if (monthRequested = "November")  
		monthValue = 11
	else if (monthRequested = "December")  
		monthValue = 12
	else
		monthValue = -1

	if(monthValue < typedMonth)
	{
		;MsgBox less monthRequested: %monthValue% typedMonth: %typedMonth%
		MouseClick, left, 2937, 210
	}
	else if (monthValue > typedMonth)
	{
		;MsgBox more monthRequested: %monthValue% typedMonth: %typedMonth%
		MouseClick, left, 2802, 209
	}
	else if (monthValue = typedMonth)
	{
		;MsgBox same monthRequested: %monthValue% typedMonth: %typedMonth%
		loop = 1
	}
}	;END OF LOOP
}

selectMonthMisrouted() {
	loop = 0
	while(loop=0)
	{
		CoordMode, Mouse, Screen
		clipboard = 
		datestring = %a_now%
		FormatTime, datestring, %datestring%, MM/dd/yy	
		StringSplit, d, datestring, /
		date := d1
		FormatTime, typedMonth, %date%, MM
		typedMonth = %date%
		MouseClick, left, 2845, 237
		MouseClick, left, 2845, 237
		send ^c
		ClipWait
		monthRequested = %clipboard%
	
		if (monthRequested = "January")  
			monthValue = 01
		else if (monthRequested = "February")  
			monthValue = 02
		else if (monthRequested = "March")  
			monthValue = 03
		else if (monthRequested = "April")  
			monthValue = 04
		else if (monthRequested = "May")  
			monthValue = 05
		else if (monthRequested = "June")  
			monthValue = 06
		else if (monthRequested = "July")  
			monthValue = 07
		else if (monthRequested = "August")  
			monthValue = 08
		else if (monthRequested = "September")  
			monthValue = 09
		else if (monthRequested = "October")  
			monthValue = 10
		else if (monthRequested = "November")  
			monthValue = 11
		else if (monthRequested = "December")  
			monthValue = 12
		else
			monthValue = -1

		if(monthValue < typedMonth)
			MouseClick, left, 2930, 236
		else if (monthValue > typedMonth)
			MouseClick, left, 2793, 235
		else if (monthValue = typedMonth)
			loop = 1

	}	;END OF LOOP
}

selectDay()
{
	global
	CoordMode, Mouse, Relative
	datestring = %fecha%
	StringSplit, d, datestring, /
	date := d3 d1 d2
	;Msgbox d3: %d3%
	;Msgbox d1: %d1%
	;Msgbox d2: %d2%
	FormatTime, day_of_Week, %date%, ddd
	;Msgbox day of the week: %day_of_week%
	dayName = %day_of_week%
	FormatTime, day_of_Week, %date%, d
	day := day_of_week + 1
	;Msgbox day: %day%
	;Msgbox whites: %whites%
	week := ((whites + day)/7)-.14
	;Msgbox before rounding %week%
	week := floor(week)
	;Msgbox after rounding %week%

	if (dayName = "Sun")
		Xpos = 865
	else if (dayName = "Mon")
		Xpos = 895
	else if (dayName = "Tue")
		Xpos = 925
	else if (dayName = "Wed")
		Xpos = 955
	else if (dayName = "Thu")
		Xpos = 985
	else if (dayName = "Fri")
		Xpos = 1015
	else if (dayName = "Sat")
		Xpos = 1045


	if (week = 0)
		Ypos = 260
	else if (week = 1)
		Ypos = 290
	else if (week = 2)
		Ypos = 320
	else if (week = 3)
		Ypos = 350
	else if (week = 4)
		Ypos = 380

	MouseClick, left, %Xpos%, %Ypos%
	
	CoordMode, Mouse, Screen				;Returns coordinates to both monitors
}

countWhites()
{
	global
	CoordMode, Mouse, Relative				;It only works on current window
	;CoordMode, Mouse, Screen
	whites := 0
	color = 0xFFFFFF

	MouseMove 867, 280
	sleep 100
	MouseGetPos Xpos, Ypos					;Obtains mouse position at that time

	PixelGetColor firstColor, %Xpos%, %Ypos%, RGB		;Gets the color of the pixel where mouse is at
	if (firstColor == color) {
		whites := (whites + 1)
		;MsgBox First is white
	}
	MouseMove 897, 280
	MouseGetPos Xpos, Ypos					;Obtains mouse position at that time
	PixelGetColor firstColor, %Xpos%, %Ypos%, RGB		;Gets the color of the pixel where mouse is at
	if (firstColor = color) {
		whites := (whites + 1)
		;MsgBox Second is white
	}

	MouseMove 927, 280
	MouseGetPos Xpos, Ypos					;Obtains mouse position at that time
	PixelGetColor firstColor, %Xpos%, %Ypos%, RGB		;Gets the color of the pixel where mouse is at
	if (firstColor = color) {
		whites := (whites + 1)
		;MsgBox Third is white
	}

	MouseMove 957, 280
	MouseGetPos Xpos, Ypos					;Obtains mouse position at that time
	PixelGetColor firstColor, %Xpos%, %Ypos%, RGB		;Gets the color of the pixel where mouse is at
	if (firstColor = color){
		whites := (whites + 1)
		;MsgBox Fourth is white
	}

	MouseMove 987, 280
	MouseGetPos Xpos, Ypos					;Obtains mouse position at that time
	PixelGetColor firstColor, %Xpos%, %Ypos%, RGB		;Gets the color of the pixel where mouse is at
	if (firstColor = color) {
		whites := (whites + 1)
		;MsgBox Fifth is white
	}

	MouseMove 1017, 280
	MouseGetPos Xpos, Ypos					;Obtains mouse position at that time
	PixelGetColor firstColor, %Xpos%, %Ypos%, RGB		;Gets the color of the pixel where mouse is at
	if (firstColor = color) {
		whites := (whites + 1)
		;MsgBox Sixth is white
	}

	MouseMove 1047, 280
	MouseGetPos Xpos, Ypos					;Obtains mouse position at that time
	PixelGetColor firstColor, %Xpos%, %Ypos%, RGB		;Gets the color of the pixel where mouse is at
	if (firstColor = color) {
		whites := (whites + 1)
		;MsgBox Seventh is white
}

	;MsgBox number of whites: %whites%
	CoordMode, Mouse, Screen				;Returns coordinates to both monitors
}


initializeVariables()				;Global Variables
{
	global whites := 0
	global incident1 := -1
	global incident2 := -1
	global incident3 := -1
	global incident4 := -1
	global distribution1 := -1
	global distribution2 := -1
	global distribution3 := -1	
	global distribution4 := -1
	global missticket1 := -1
	global missticket2 := -1
	global missdistribution1 := -1
	global missdistribution2 := -1
}

mainMethodIncidentSD()
{	
	global
	initializeVariables()
	openNetasthra()
	openIncidentDistribution()
	writeToFileInc()
}

mainMethodServiceSD()
{	
	global
	initializeVariables()
	openNetasthra()
	openServiceDistribution()
	writeToFileSer()	
}

mainMethodMiss1()
{	
	global
	initializeVariables()
	openNetasthra()
	openMiss1()
	writeToFileInc()
}

mainMethodMiss2()
{	
	global
	initializeVariables()
	openNetasthra()
	openMiss2()
	writeToFileSer()	
}

openNetasthra()
{
	run, chrome.exe http://itreporting.cargill.com/Netasthra/loginform
	sleep 50
	send {LWin down}{UP down}{UP up}{LWin up}						;Maximizing window
	MouseMove 2574, 457
	waitColorChange()
	sleep 1000
	send, c760912{tab}Mex0012345
	sleep 50
	send {enter}
	waitColorChange()
	waitColorChange()
	waitColorChange()
	;sleep 2500
	CoordMode, Mouse, Screen			;It only works on current window
}

openBT()
{
	run, chrome.exe https://drwr00.ngcc.bt.com/Reports/Pages/Folder.aspx?ItemPath=/CARGILL
	CoordMode, Mouse, Screen			;It only works on current window
}

waitColorChange()
{
	CoordMode, Mouse, Relative				;It only works on current window
	found := 0						;Initializes the variable found
	loopTimes := 0						;Initializes the variable loopTimes
	MouseGetPos Xpos, Ypos					;Obtains mouse position at that time
	PixelGetColor firstColor, %Xpos%, %Ypos%, RGB		;Gets the color of the pixel where mouse is at
	secondColor := 1					;Initializes the variable secondColor
	while(found == 0)				;Check if the color has been found, if not then it continues
	{
		sleep 400					;Waits 400 miliseconds for animations that haven't finished
		if(secondColor != firstColor && loopTimes != 0)
			found := 1
	else
	{
		MouseGetPos Xpos, Ypos				;Gets position of mouse
		PixelGetColor secondColor, %Xpos%, %Ypos%, RGB	;gets the color of the pixel where mouse is at
		loopTimes := (loopTimes + 1)			;Increases the times it has checked for a color change
	}
	cliboard := 						;NOT SURE IF ITS NEEDED
	}
	CoordMode, Mouse, Screen				;Returns coordinates to both monitors
}

openIncidentDistribution()
{
	MouseClick, left, 2017, 119
	MouseClick, left, 1937, 154
	sleep 100
	send Incident Distribution
	sleep 100
	MouseClick, left, 1955, 189			;Click in Incident Distribution
	MouseMove, 2879, 494
	waitColorChange()
	MouseClick, left, 2781, 636 
	MouseClick, left, 3815, 266			;Clicks on Filter options
	sleep 300 					;Waits till filter option opens
	send {TAB 5}{up 2}
	MouseClick, left, 3003, 322
	sleep 300
	Click Wheeldown
	MouseClick, left, 2920, 302
	filterDate()
	MouseClick, left, 2892, 664			;Click in Done
	MouseMove, 2180, 518				;Hovers over loading image
	waitColorChange()
	MouseClick, left, 3810, 207			;Clicks on Table icon (Upper-left side on Netasthra)
	MouseClick, left, 2495, 851			;Clicks on empty position to to use next shortcuts
	sleep 100
	send ^a						;Select All text on webpage
	sleep 100
	send ^c						;Copy All text on webpage
	sleep 100
	StartPos := RegExMatch(ClipBoard, "Total:\s([0-9]{1,})\s([0-9]{1,})\s([0-9]{1,})\s([0-9]{1,})", Inc)
	;Find the values after "Total: " and stores them in Inc array
	
	MouseClick, left, 3814, 197			;Clicking on the graph icon to go back to the table
	Mouseclick, left, 3478, 190			; Click in Total Count
	MouseMove, 3708, 217				;Hovers over loading image
	
	waitColorChange() 				;Maybe it requires two color changes if speed is fast
	waitColorChange()
	;sleep 1000
	MouseClick, left, 1999, 196			;Click on the Eye (add/remove columns)
	sleep 500
	send {TAB 4}{SPACE}{space}

	send {Shift down}{tab}{shift up}
	send status
	send {tab 2}{space}{shift down}{tab 2}{shift up}
	send assignedgroup
	send {tab 7}{space}{shift down}{tab 7}{shift up}
	send assignedto
	send {tab 2}{space}{shift down}{tab 2}{shift up}
	send arrivaldate
	send {tab 2}{space}{shift down}{tab 2}{shift up}
	send modifieddate
	send {tab 2}{space}{shift down}{tab 2}{shift up}
	send description
	send {tab 2}{space}{shift down}{tab 2}{shift up}
	send createdby
	send {tab 2}{space}{shift down}{tab 2}{shift up}
	send resolveddate
	send {tab 2}{space}{shift down}{tab 2}{shift up}
	send closeddate
	send {tab 2}{space}{shift down}{tab 2}{shift up}
	send source
	send {tab 2}{space}{shift down}{tab 2}{shift up}
	send priority
	send {tab 2}{space}{shift down}{tab 2}{shift up}
	send country
	send {tab 2}{space}{shift down}{tab 2}{shift up}
	send location
	send {tab 2}{space}{shift down}{tab 2}{shift up}
	MouseClick, left, 2818, 811
	sleep 300
	waitColorChange()
	sleep 300
	MouseClick, left, 1958, 198			;It clicks on download file

	global incident1 = Inc1
	global incident2 := Inc2
	global incident3 := Inc3
	global incident4 := Inc4
}

openServiceDistribution()
{
	MouseClick, left, 2719, 120
	sleep 100
	MouseClick, left, 2007, 147
	send dist
	sleep 100
	MouseClick, left, 2002, 190
	MouseMove, 2880, 494
	waitColorChange()
	MouseClick, left, 3815, 266
	sleep 300
	send {TAB 5}{up 2}
	MouseClick, left, 3003, 322
	Click Wheeldown
	MouseClick, left, 2893, 311
	MouseClick, left, 2937, 212
	filterDate()
	MouseClick, left, 2892, 664
	MouseMove, 2779, 639
	waitColorChange()
	MouseClick, left, 2779, 639
	MouseClick, left, 3810, 207			;Clicks on Table icon (Upper-left side on Netasthra)
	MouseClick, left, 2495, 851			;Clicks on empty position to to use next shortcuts
	sleep 100
	send ^a						;Select All text on webpage
	sleep 100
	send ^c						;Copy All text on webpage
	sleep 100
	StartPos := RegExMatch(ClipBoard, "Total:\s([0-9]{1,})\s([0-9]{1,})\s([0-9]{1,})\s([0-9]{1,})", Dis)
	;Find the values after "Total: " and stores them in Inc array
	
	MouseClick, left, 3813, 197			;Clicking on the graph icon to go back to the table
	Mouseclick, left, 3478, 190			; Click in Total Count
	MouseMove, 2179, 195				;Hovers over loading image
	
	waitColorChange() 				;Maybe it requires two color changes if speed is fast
	waitColorChange()
	sleep 500
	MouseClick, left, 1999, 196			;Click on the Eye (add/remove columns)
	sleep 200
	send {TAB 4}{SPACE}{space}

	send {Shift down}{tab}{shift up}
	send status
	send {tab 2}{space}{shift down}{tab 2}{shift up}
	send assignedgroup
	send {tab 7}{space}{shift down}{tab 7}{shift up}
	send assignedto
	send {tab 2}{space}{shift down}{tab 2}{shift up}
	send arrivaldate
	send {tab 2}{space}{shift down}{tab 2}{shift up}
	send modifieddate
	send {tab 2}{space}{shift down}{tab 2}{shift up}
	send description
	send {tab 2}{space}{shift down}{tab 2}{shift up}
	send createdby
	send {tab 2}{space}{shift down}{tab 2}{shift up}
	send resolveddate
	send {tab 2}{space}{shift down}{tab 2}{shift up}
	send closeddate
	send {tab 2}{space}{shift down}{tab 2}{shift up}
	send source
	send {tab 2}{space}{shift down}{tab 2}{shift up}
	send priority
	send {tab 2}{space}{shift down}{tab 2}{shift up}
	send country
	send {tab 2}{space}{shift down}{tab 2}{shift up}
	send location
	send {tab 2}{space}{shift down}{tab 2}{shift up}
	MouseClick, left, 2818, 811
	sleep 300
	waitColorChange()
	sleep 300
	MouseClick, left, 1958, 198			;It clicks on download file


	global distribution1 = Dis1
	global distribution2 := Dis2
	global distribution3 := Dis3
	global distribution4 := Dis4
}

openMiss1()
{
	MouseClick, left, 2017, 119
	MouseClick, left, 1937, 154
	send misrouted
	MouseClick, left, 1955, 189			;Click in Incident Distribution
	MouseMove, 2879, 494
	waitColorChange()
	sleep 500
	MouseClick, left, 2778, 650
	MouseClick, left, 3815, 266			;Clicks on Filter options
	sleep 300 					;Waits till filter option opens
	MouseClick, left, 2908, 329
	MouseClick, left, 2928, 234
	MouseClick, left, 2928, 234
	MouseClick, left, 2928, 234
	MouseClick, left, 2928, 234
	MouseClick, left, 2928, 234
	selectMonthMisrouted()
}

openMiss2()
{

	MouseClick, left, 2719, 120
	sleep 100
	MouseClick, left, 2007, 147
	send misrouted
	sleep 100
	MouseClick, left, 2002, 190
	MouseMove, 2880, 494
	waitColorChange()
	sleep 500
	MouseClick, left, 2778, 650
	MouseClick, left, 3815, 266			;Clicks on Filter options
	sleep 300 					;Waits till filter option opens
	MouseClick, left, 2908, 329
	MouseClick, left, 2930, 237
	MouseClick, left, 2930, 237
	MouseClick, left, 2930, 237
	MouseClick, left, 2930, 237
	selectMonthMisrouted()
}


mainMethodState()
{
	openBT()

	navigateState()
}

navigateState()
{
	global
	sleep 3000
	send {TAB 9}{ENTER}
	sleep 3000
	send {TAB 13}{ENTER}
	sleep 4500
	send {TAB 8}
	send %fecha%{TAB}
	sleep 4500
	send {TAB 2}
	send %ayer%{TAB}
	sleep 4500
	send {TAB 4}{SPACE}{TAB 6}{SPACE}{ENTER}
	sleep 4500
	send {TAB 6}{SPACE}{TAB 4}{SPACE}{ENTER}
	sleep 4500
	send {TAB 9}{ENTER}
	sleep 6000
	MouseMove 2814, 212
	waitColorChange()
	sleep 200
	send {TAB 17}{SPACE}{DOWN}{ENTER}
}


mainMethodStatistics()
{
	openBT()

	navigateStatistics()
}

navigateStatistics()
{
	global
	sleep 3000
	send {TAB 12}{ENTER}
	sleep 3000
	send {TAB 12}{ENTER}
	sleep 4500
	send {TAB 8}
	send %fecha%{TAB}
	sleep 4500
	send {TAB 2}
	send %ayer%{TAB}
	sleep 4500
	send {TAB 3}{DOWN}{TAB}
	sleep 4500
	send {TAB 4}{SPACE}{DOWN}{ENTER}
	sleep 4500
	send {TAB 5}60{TAB}
	sleep 4500
	send {TAB 6}60{TAB}
	sleep 4500
	send {TAB 7}61{TAB}
	sleep 4500
	send {TAB 10}{ENTER}
	sleep 6000
	MouseMove 2341, 324
	waitColorChange()
	sleep 300
	send {TAB 18}{SPACE}{DOWN}{ENTER}
}

mainMethodqagent()
{
	openBT()

	navigateqagent()
}

navigateqagent()
{
	global
	sleep 3000
	send {TAB 12}{ENTER}
	sleep 3000
	send {TAB 15}{ENTER}
	sleep 4500
	send {TAB 8}
	send %fecha%{TAB}
	sleep 4500
	send {TAB 2}
	send %ayer%{TAB}
	sleep 4500
	send {TAB 3}{DOWN}
	sleep 4500
	send {TAB 4}60{TAB}
	sleep 4500
	send {TAB 5}{down}
	sleep 4500
	send {TAB 7}{ENTER}
	sleep 6000
	MouseMove 2354, 253
	waitColorChange()
	sleep 300
	send {TAB 15}{SPACE}{DOWN}{ENTER}
}


mainMethodReported()
{
	global
	CoordMode, Mouse, Screen
	
	;Set File | CSV | Available Fields | etc
	MouseClick, left, 2107, 540
	MouseClick, left, 2107, 540
	MouseClick, left, 2107, 540
	MouseClick, left, 2107, 540	;Click scroll down 7 times to see Reported Date+ field
	MouseClick, left, 2107, 540
	MouseClick, left, 2107, 540
	MouseClick, left, 2107, 540
	MouseClick, left, 2019, 453	;Click on Reported Date+ (To select it)
	MouseClick, left, 2199, 361	;Click in Add Field
	MouseClick, left, 2531, 391	;Click in is equal (To set it to >= )
	MouseClick, left, 2583, 456	;Set it to  >=
	MouseClick, left, 2822, 395	;Click in Calendar icon
	MouseClick, left, 2972, 432	;Set Calendar to January (Default)
	Mouseclick, left, 2900, 452

	;Selecting Month
	MouseClick, left, 2972, 432	
	If(fecha = "January")
	{
		Mouseclick, left, 2900, 452
		sleep 100
		MouseClick, left, 2838, 481
	}	
	else if(fecha = "February")
	{
		Mouseclick, left, 2900, 467
		sleep 100
		MouseClick, left, 2931, 484
	}
	else if(fecha = "March")
	{
		Mouseclick, left, 2900, 480
		sleep 100
		MouseClick, left, 2931, 484
	}
	else if(fecha = "April")
	{
		Mouseclick, left, 2900, 497
		sleep 100
		MouseClick, left, 3015, 483
	}
	else if(fecha = "May")
	{
		Mouseclick, left, 2900, 515
		sleep 100
		MouseClick, left, 2874, 483
	}
	else if(fecha = "June")
	{
		Mouseclick, left, 2900, 528
		sleep 100
		MouseClick, left, 2968, 480
	}
	else if(fecha = "July")
	{
		Mouseclick, left, 2900, 545
		MouseClick, left, 3017, 486
	}
	else if(fecha = "August")
	{
		Mouseclick, left, 2900, 559
		sleep 100
		MouseClick, left, 2900, 482
	}
	else if(fecha = "September")
	{
		Mouseclick, left, 2900, 578
		sleep 100
		MouseClick, left, 2994, 479
	}
	else if(fecha = "October")
	{	
		Mouseclick, left, 2900, 592
		sleep 100
		MouseClick, left, 2845, 481
	}
	else if(fecha = "November")
	{
		Mouseclick, left, 2900, 611
		sleep 100
		MouseClick, left, 2932, 481
	}
	else if(fecha = "December")
	{	
		Mouseclick, left, 2900, 624
		sleep 100
		MouseClick, left, 2993, 478
	}
	else
		Msgbox The month provided is incorrect
	;ACEPT DATE
	MouseClick, left, 2898, 641
	
	;------------------------------
	MouseClick, left, 2019, 453	;Click on Reported Date+ (To select it)
	MouseClick, left, 2199, 361	;Click in Add Field
	MouseClick, left, 2528, 429	;Click in is equal (To set it to >= )
	MouseClick, left, 2581, 526	;Set it to  <=
	MouseClick, left, 2823, 431	;Click in Calendar icon
	MouseClick, left, 2972, 471	;Set Calendar to January (Default)
	Mouseclick, left, 2900, 491

	;Selecting Month
	MouseClick, left, 2972, 470	
	If(fecha = "January")
	{
		Mouseclick, left, 2900, 491
		sleep 100
		MouseClick, left, 2900, 581
	}	
	else if(fecha = "February")
	{
		Mouseclick, left, 2900, 503
		sleep 100
		MouseClick, left, 2900, 581
	}
	else if(fecha = "March")
	{
		Mouseclick, left, 2900, 522
		sleep 100
		MouseClick, left, 2993, 581
	}
	else if(fecha = "April")
	{
		Mouseclick, left, 2900, 539
		sleep 100
		MouseClick, left, 2839, 595
	}
	else if(fecha = "May")
	{
		Mouseclick, left, 2900, 554
		sleep 100
		MouseClick, left, 2934, 581
	}
	else if(fecha = "June")
	{
		Mouseclick, left, 2900, 567
		sleep 100
		MouseClick, left, 2996, 581
	}
	else if(fecha = "July")
	{
		Mouseclick, left, 2900, 587
		sleep 100
		MouseClick, left, 2874, 598
	}
	else if(fecha = "August")
	{
		Mouseclick, left, 2900, 601
		sleep 100
		MouseClick, left, 2966, 581
	}
	else if(fecha = "September")
	{
		Mouseclick, left, 2900, 618
		sleep 100
		MouseClick, left, 3018, 581
	}
	else if(fecha = "October")
	{	
		Mouseclick, left, 2900, 632
		sleep 100
		MouseClick, left, 2905, 584
	}
	else if(fecha = "November")
	{
		Mouseclick, left, 2900, 646
		sleep 100
		MouseClick, left, 2966, 579
	}
	else if(fecha = "December")
	{	
		Mouseclick, left, 2900, 663
		sleep 100
		MouseClick, left, 2840, 598
	}
	else
		Msgbox The month provided is incorrect
	;ACEPT DATE
	MouseClick, left, 2898, 681	
	
	MouseClick, left, 2081, 633	;Click in Destination
	MouseClick, left, 2020, 664	;Click in File
	MouseClick, left, 2235, 629	;Click in Format
	MouseClick, left, 2165, 661	;Click in CSV
	MouseClick, left, 2190, 571	;Click in Advanced




	;=========DOWNLOAD DUTCH REPORT============;
	MouseClick, left, 2336, 524
	Sendraw ('Submitter*' = "I793776") OR 
	sendraw ('Submitter*' = "S972800") OR 
	sendraw ('Submitter*' = "T867312") OR 
	sendraw ('Submitter*' = "M239565") OR 
	sendraw ('Submitter*' = "K984621") OR 
	sendraw ('Submitter*' = "E181344") OR 
	sendraw ('Submitter*' = "M396541")
	send {tab 5}
	send ^a
	send 01_Dutch_Submitted_%fecha%.csv
	MouseClick, left, 1955, 312
	MouseMove, 2024, 1060
	waitClick()
	send ^j
	waitClick()
	Send {Shift down}{LCtrl down}{Tab}{LCtrl up}{Shift up}
	MouseClick, left, 3729,315

	;=========DOWNLOAD FRENCH REPORT============;	
	MouseClick, left, 2336, 524
	send ^a
	send {del}
	Sendraw ('Submitter*' = "A885930") OR  
	sendraw ('Submitter*' = "A079482") OR 
	sendraw ('Submitter*' = "F340923") OR 
	sendraw ('Submitter*' = "V510056") OR
	sendraw ('Submitter*' = "F137922") OR
	sendraw ('Submitter*' = "W135629") OR
	sendraw ('Submitter*' = "M944859")
	send {tab 5}
	send ^a
	send 01_French_Submitted_%fecha%.csv
	MouseClick, left, 1955, 312
	MouseMove, 2024, 1060
	waitClick()
	send ^j
	waitClick()
	Send {Shift down}{LCtrl down}{Tab}{LCtrl up}{Shift up}
	MouseClick, left, 3729,315

	;=========DOWNLOAD GERMAN REPORT============;	
	MouseClick, left, 2336, 524
	send ^a
	send {del}
	sendraw ('Submitter*' = "N069127") OR 
	sendraw ('Submitter*' = "I947801") OR 
	sendraw ('Submitter*' = "F743921") OR
	sendraw ('Submitter*' = "C857763") 
	send {tab 5}
	send ^a
	send 01_German_Submitted_%fecha%.csv
	MouseClick, left, 1955, 312
	MouseMove, 2024, 1060
	waitClick()
	send ^j
	waitClick()
	Send {Shift down}{LCtrl down}{Tab}{LCtrl up}{Shift up}
	MouseClick, left, 3729,315

	;=========DOWNLOAD POLISH REPORT============;	IT BREAKS ON POLISH

	MouseClick, left, 2336, 524
	send ^a
	send {del}
	Sendraw ('Submitter*' = "A522461") OR 
	sendraw ('Submitter*' = "A697516") OR 
	sendraw ('Submitter*' = "A899684") OR 
	sendraw ('Submitter*' = "P634176")
	send {tab 5}
	send ^a
	send 01_Polish_Submitted_%fecha%.csv
	MouseClick, left, 1955, 312
	waitClick()
	send ^j
	waitClick()
	Send {Shift down}{LCtrl down}{Tab}{LCtrl up}{Shift up}
	MouseClick, left, 3729,315
	
	;=========DOWNLOAD RUSSIAN REPORT============;	
	MouseClick, left, 2336, 524
	send ^a
	send {del}
	Sendraw ('Submitter*' = "A132708") OR 
	sendraw ('Submitter*' = "B885997") OR 
	sendraw ('Submitter*' = "F646521") OR 
	sendraw ('Submitter*' = "I871455") OR 
	sendraw ('Submitter*' = "J069431") OR 
	sendraw ('Submitter*' = "M679429") OR
	sendraw ('Submitter*' = "A170042")
	send {tab 5}
	send ^a
	send 01_Russian_Submitted_%fecha%.csv
	MouseClick, left, 1955, 312
	waitClick()
	send ^j
	waitClick()
	Send {Shift down}{LCtrl down}{Tab}{LCtrl up}{Shift up}
	MouseClick, left, 3729,315

	;=========DOWNLOAD MIXED REPORT============;	
	MouseClick, left, 2336, 524
	send ^a
	send {del}
	Sendraw ('Submitter*' = "C446029") OR 
	sendraw ('Submitter*' = "R321861") OR 
	sendraw ('Submitter*' = "E402152") OR 
	sendraw ('Submitter*' = "M886061") OR 
	sendraw ('Submitter*' = "D079533") OR 
	sendraw ('Submitter*' = "U318158") OR 
	sendraw ('Submitter*' = "H797054") OR 
	sendraw ('Submitter*' = "S901062") 
	send {tab 5}
	send ^a
	send 01_Mixed_Submitted_%fecha%.csv
	MouseClick, left, 1955, 312
	waitClick()
	send ^j
	waitClick()
	Send {Shift down}{LCtrl down}{Tab}{LCtrl up}{Shift up}
	MouseClick, left, 3729,315
	
	MouseClick, left, 2041, 466	;Click in Reported Source
	MouseClick, left, 2200, 363	;Click in Add Field
	MouseClick, left, 2945, 452	;Click to scroll down
	MouseClick, left, 2823, 444	;Click in Dropdown menu (WEB|MAIL)
	MouseClick, left, 2843, 607	;Click in WEB
	

	;=========DOWNLOAD DUTCH GROUP REPORT============;	HAS TO BE WEB ONLY
	MouseClick, left, 2336, 524
	send ^a
	send {del}
	Sendraw ('Owner Group+'  = "Infra-SD-EMEA-Dutch")
	send {tab 5}
	send ^a
	send 02_HDCC_Dutch_Submitted_%fecha%.csv
	MouseClick, left, 1955, 312
	waitClick()
	send ^j
	waitClick()
	Send {Shift down}{LCtrl down}{Tab}{LCtrl up}{Shift up}
	MouseClick, left, 3729,315

	;=========DOWNLOAD GERMAN REPORT============;		HAS TO BE WEB ONLY
	MouseClick, left, 2336, 524
	send ^a
	send {del}
	Sendraw ('Owner Group+'  = "Infra-SD-EMEA-German") 
	send {tab 5}
	send ^a
	send 02_HDCC_German_Submitted_%fecha%.csv
	MouseClick, left, 1955, 312
	waitClick()
	send ^j
	waitClick()
	Send {Shift down}{LCtrl down}{Tab}{LCtrl up}{Shift up}
	MouseClick, left, 3729,315

	;=========DOWNLOAD FRENCH REPORT============;		HAS TO BE WEB ONLY
	MouseClick, left, 2336, 524
	send ^a
	send {del}
	Sendraw ('Owner Group+'  = "Infra-SD-EMEA-French") 
	send {tab 5}
	send ^a
	send 02_HDCC_French_Submitted_%fecha%.csv
	MouseClick, left, 1955, 312
	waitClick()
	send ^j
	waitClick()
	Send {Shift down}{LCtrl down}{Tab}{LCtrl up}{Shift up}
	MouseClick, left, 3729,315

	;=========DOWNLOAD RUSSIAN REPORT============;		HAS TO BE WEB ONLY
	MouseClick, left, 2336, 524
	send ^a
	send {del}
	Sendraw ('Owner Group+'  = "Infra-SD-EMEA-Russian") 
	send {tab 5}
	send ^a
	send 02_HDCC_Russian_Submitted_%fecha%.csv
	MouseClick, left, 1955, 312
	waitClick()
	send ^j
	waitClick()
	Send {Shift down}{LCtrl down}{Tab}{LCtrl up}{Shift up}
	MouseClick, left, 3729,315
	
	;=========DOWNLOAD HUN-ROM REPORT============;		HAS TO BE WEB ONLY
	MouseClick, left, 2336, 524
	send ^a
	send {del}
	Sendraw ('Owner Group+'  = "Infra-SD-EMEA-Hungarian") OR
	Sendraw ('Owner Group+'  = "Infra-SD-EMEA-Romanian")
	send {tab 5}
	send ^a
	send 02_HDCC_HUG-ROM_Submitted_%fecha%.csv
	MouseClick, left, 1955, 312
	waitClick()
	send ^j
	waitClick()
	Send {Shift down}{LCtrl down}{Tab}{LCtrl up}{Shift up}
	MouseClick, left, 3729,315

	;=========DOWNLOAD POLISH REPORT============;		HAS TO BE WEB ONLY
	MouseClick, left, 2336, 524
	send ^a
	send {del}
	Sendraw ('Owner Group+'  = "Infra-SD-EMEA-Polish") 
	send {tab 5}
	send ^a
	send 02_HDCC_Polish_Submitted_%fecha%.csv
	MouseClick, left, 1955, 312
	waitClick()
	send ^j
	waitClick()
	Send {Shift down}{LCtrl down}{Tab}{LCtrl up}{Shift up}
	MouseClick, left, 3729,315

	;=========DOWNLOAD MIXED REPORT============;		HAS TO BE WEB ONLY
	MouseClick, left, 2336, 524
	send ^a
	send {del}
	Sendraw ('Owner Group+'  = "Infra-SD-EMEA-Italian") OR 
	Sendraw ('Owner Group+'  = "Infra-SD-EMEA-Spanish") OR 
	Sendraw ('Owner Group+'  = "Infra-SD-EMEA-Portuguese")
	send {tab 5}
	send ^a
	send 02_HDCC_Mixed_Submitted_%fecha%.csv
	MouseClick, left, 1955, 312
	waitClick()
	send ^j
	waitClick()
	Send {Shift down}{LCtrl down}{Tab}{LCtrl up}{Shift up}
	MouseClick, left, 3729,315

	;=========DOWNLOAD TURKISH REPORT============;		HAS TO BE WEB ONLY
	MouseClick, left, 2336, 524
	send ^a
	send {del}
	Sendraw ('Owner Group+'  = "Infra-SD-EMEA-Turkish")
	send {tab 5}
	send ^a
	send 02_HDCC_Turkish_Submitted_%fecha%.csv
	MouseClick, left, 1955, 312
	waitClick()
	send ^j
	waitClick()
	Send {Shift down}{LCtrl down}{Tab}{LCtrl up}{Shift up}
	MouseClick, left, 3729,315

	MouseClick, left, 2821, 448	;Click in dropdown menu
	sleep 50
	MouseClick, left, 2854, 479	;Click in EMAIL

	;=========DOWNLOAD FRENCH REPORT============;		HAS TO BE MAIL ONLY
	MouseClick, left, 2336, 524
	send ^a
	send {del}
	Sendraw ('Owner Group+'  = "Infra-SD-EMEA-French")
	send {tab 5}
	send ^a
	send 03_MAIL_French_Submitted_%fecha%.csv
	MouseClick, left, 1955, 312
	waitClick()
	send ^j
	waitClick()
	Send {Shift down}{LCtrl down}{Tab}{LCtrl up}{Shift up}
	MouseClick, left, 3729,315

	;=========DOWNLOAD RUSSIAN REPORT============;		HAS TO BE MAIL ONLY
	MouseClick, left, 2336, 524
	send ^a
	send {del}
	Sendraw ('Owner Group+'  = "Infra-SD-EMEA-Russian")
	send {tab 5}
	send ^a
	send 03_MAIL_Russian_Submitted_%fecha%.csv
	MouseClick, left, 1955, 312
	waitClick()
	send ^j
	waitClick()
	Send {Shift down}{LCtrl down}{Tab}{LCtrl up}{Shift up}
	MouseClick, left, 3729,315

	;=========DOWNLOAD HUN-ROM REPORT============;		HAS TO BE MAIL ONLY
	MouseClick, left, 2336, 524
	send ^a
	send {del}
	Sendraw ('Owner Group+'  = "Infra-SD-EMEA-Hungarian") OR
	Sendraw ('Owner Group+'  = "Infra-SD-EMEA-Romanian")
	send {tab 5}
	send ^a
	send 03_MAIL_Hun-Rom_Submitted_%fecha%.csv
	MouseClick, left, 1955, 312
	waitClick()
	send ^j
	waitClick()
	Send {Shift down}{LCtrl down}{Tab}{LCtrl up}{Shift up}
	MouseClick, left, 3729,315

	;=========DOWNLOAD POLISH REPORT============;		HAS TO BE MAIL ONLY
	MouseClick, left, 2336, 524
	send ^a
	send {del}
	Sendraw ('Owner Group+'  = "Infra-SD-EMEA-Polish")
	send {tab 5}
	send ^a
	send 03_MAIL_Polish_Submitted_%fecha%.csv
	MouseClick, left, 1955, 312
	waitClick()
	send ^j
	waitClick()
	Send {Shift down}{LCtrl down}{Tab}{LCtrl up}{Shift up}
	MouseClick, left, 3729,315

	;=========DOWNLOAD MIXED REPORT============;		HAS TO BE MAIL ONLY
	MouseClick, left, 2336, 524
	send ^a
	send {del}
	Sendraw ('Owner Group+'  = "Infra-SD-EMEA-Italian") OR
	Sendraw ('Owner Group+'  = "Infra-SD-EMEA-Spanish") OR
	Sendraw ('Owner Group+'  = "Infra-SD-EMEA-Portuguese")
	send {tab 5}
	send ^a
	send 03_MAIL_Mixed_Submitted_%fecha%.csv
	MouseClick, left, 1955, 312
	waitClick()
	send ^j
	waitClick()
	Send {Shift down}{LCtrl down}{Tab}{LCtrl up}{Shift up}
	MouseClick, left, 3729,315

	;=========DOWNLOAD TURKISH REPORT============;		HAS TO BE MAIL ONLY
	MouseClick, left, 2336, 524
	send ^a
	send {del}
	Sendraw ('Owner Group+'  = "Infra-SD-EMEA-Turkish")
	send {tab 5}
	send ^a
	send 03_MAIL_Turkish_Submitted_%fecha%.csv
	MouseClick, left, 1955, 312
	waitClick()
	send ^j
	waitClick()
	Send {Shift down}{LCtrl down}{Tab}{LCtrl up}{Shift up}
	MouseClick, left, 3729,315


}

mainMethodChat()
{
	global
	CoordMode, Mouse, Screen
	MouseClick, left, 1933, 212			;Click in Applications
	MouseMove, 2212, 209				;Hover over Quick Links
	MouseClick, left, 2216, 286			;Click in AR System Report Console
	Mousemove, 2743, 509
	waitColorChange()
	waitColorChange()
	MouseClick, left, 2186, 187			;Click in first item of list
	send {F3}
	send Anupam Agent Driven Abandon Chat
	rep1 := FindHighlightedItem()





	MouseClick, left, 2254, (rep1 - 10) 			;Click Anupam Agent Driven Abandon Chat Report
	sleep 100
	MouseClick, left, 3705, 320			;Click in Show Additional Filters
	waitClick()
	MouseClick, left, 2189, 568
	MouseClick, left, 2244, 527
	sendraw 'Assigned To'   !=  " "  AND  'Region'  = "EMEA"  AND  'Resolution Status'  =  "Abandoned"  AND 'Request Live agent Time'  >= "
	send %fecha% 12:00:00 AM"
	MouseClick, left, 1941, 317
	MouseMove, 2027, 440
	waitClick()
	MouseClick, left, 1968, 348
	MouseClick, left, 2995, 797
	waitClick()
	send ^j
	waitClick()
	send ^{F4}
	sleep 300


	MouseClick, left, 2152, 186
	send ^{HOME}
	;send {PgDn 1}
	send {F3}
	sleep 100
	send Anupam Agent Driven Resolved Chat
	sleep 1000
	rep2 := FindHighlightedItem()


	MouseClick, left, 2254, (rep2 - 10)
	;MouseClick, left, 2182, 223			;Click in Alex Agent Driven Resolved Chat
	MouseClick, left, 3705, 320			;Click in Show Additional Filters
	waitClick()
	MouseClick, left, 2244, 527
	sendraw 'Assigned To'   !=  " "  AND  'Region'  = "EMEA"  AND  'Resolution Status'  =  "Resolved via Agent" 

 AND 'Request Live agent Time'  >= "
	send %fecha% 12:00:00 AM"
	MouseClick, left, 1941, 317
	MouseMove, 2027, 440
	waitClick()
	MouseClick, left, 1968, 348
	MouseClick, left, 2995, 797
	waitClick()
	send ^j
	waitClick()
	send ^{F4}
	sleep 300






	MouseClick, left, 2152, 186
	send {F3}
	sleep 100
	send Anupam User and System Driven Abandon Chat
	sleep 2000
	rep3 := FindHighlightedItem()

	MouseClick, left, 2254, (rep3 - 10)

	;MouseClick, left, 2150, 247			;Alex User and System Driven Abandoned Chat
	MouseClick, left, 3705, 320			;Click in Show Additional Filters
	waitClick()
	MouseClick, left, 2189, 568
	MouseClick, left, 2244, 527
	sendraw 'Region' = "EMEA" AND 'Resolution Status' = "Abandoned" AND 'Request Live agent Time' >= "
	send %fecha% 12:00:00 AM"
	MouseClick, left, 1941, 317
	MouseMove, 2027, 440
	waitClick()
	MouseClick, left, 1968, 348
	MouseClick, left, 2995, 797
	waitClick()
	send ^j
	waitClick()
	send ^{F4}
}


kpiStateFilter()
{
	global
	WinActivate, Agent State
	sleep 50
	send ^{HOME}
	send {right 8}
	send +^{DOWN}
	send ^-c{ENTER}
	send ^{HOME}
	send +^l
	send {RIGHT 4}
	send !{DOWN}
	send {UP 3}{Space}
	send {DOWN 2}{SPACE}
	send {DOWN 2}{SPACE}
	send {DOWN 4}{SPACE}
	send {ENTER}
	send {right 4}
	send !{down}
	send {up 4}initialized{enter}
	yesterday := SubStr(fecha, 4, 2)
	saturday := yesterday + 1
	sunday := yesterday + 2
	send ^{home}
	send {right 3}
	send !{down}
	send {up 4}

}


findHighlightedItem()
{
	CoordMode, Mouse, Relative				;It only works on current window
	max := 283
	current := 184
	while(current < max)
	{
		PixelGetColor foundColor, 219, current, RGB
		;MsgBox % "foundColor: " foundColor "current: " current "Perfect Color: FF9632" 
		if(0X0FF9632 = foundColor)
			yCoord := current
			;MsgBox found it! %current%
		current := current + 2
	}
	CoordMode, Mouse, Screen
	return yCoord
}


tempMove()
{
	CoordMode, Mouse, Screen
	MouseClick, left, 2929, 411
}

waitClick()
{
	Input, SingleKey, L1, {right}
}

writeToFileInc()
{
	global
	;FileAppend, %incident1%`n, C:\Users\%A_UserName%\Desktop\KPI %A_MM%-%A_DD%-%A_YYYY%.txt
	;FileAppend, %incident2%`n, C:\Users\%A_UserName%\Desktop\KPI %A_MM%-%A_DD%-%A_YYYY%.txt
	;FileAppend, %incident3%`n, C:\Users\%A_UserName%\Desktop\KPI %A_MM%-%A_DD%-%A_YYYY%.txt
	;FileAppend, %incident4%`n, C:\Users\%A_UserName%\Desktop\KPI %A_MM%-%A_DD%-%A_YYYY%.txt
}

writeToFileSer()
{
	global
	;FileAppend, %distribution1%`n, C:\Users\%A_UserName%\Desktop\KPI %A_MM%-%A_DD%-%A_YYYY%.txt
	;FileAppend, %distribution2%`n, C:\Users\%A_UserName%\Desktop\KPI %A_MM%-%A_DD%-%A_YYYY%.txt
	;FileAppend, %distribution3%`n, C:\Users\%A_UserName%\Desktop\KPI %A_MM%-%A_DD%-%A_YYYY%.txt
	;FileAppend, %distribution4%`n, C:\Users\%A_UserName%\Desktop\KPI %A_MM%-%A_DD%-%A_YYYY%.txt
}