;Quick test to see if the application name is correct
AppName = chrome.exe ;uTorrent.exe ;put your process name here
;msgbox, Run the program then press OKAY to see if it is detected.
while 1
{
	if AppName = 
	{
		msgbox, AppName has no value, ENDING PROGRAM
		ExitApp
	}
	Process, Exist, %AppName%
	PID:=ErrorLevel
	If (%ErrorLevel% = 0) ;the process was not found
	{
		msgbox, The program %AppName% DOES NOT appear to be running, press ESCAPE to QUIT
	}
	else
	{
		msgbox, The program %AppName% appears to be running, I will now attempt to close it
		Process, Close, %PID%
		msgbox, If I succeeded then the name is correct
	}
}

Escape::
ExitApp