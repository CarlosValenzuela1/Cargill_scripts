#SingleInstance Force
SetWorkingDir %A_ScriptDir%
parameter := Clipboard
Loop, read, %A_ScriptDir%\Pass.txt
{
    IfInString, A_LoopReadLine, %parameter%
    {
    	read := A_LoopReadLine
    	read := SubStr(read, 6)
    	send, %read%{TAB}
       	; MsgBox, "This is blah " %read%
    }
}