;checks if vpn is connected then decides whether or not to close a program
Connected = false ;default the VPN connection to false for security
AppName = uTorrent.exe ;put your process name here
AppPath = "C:\uTorrent\uTorrent.exe" ;The full path of the program to be controlled
Loop ;main program, loop forever
{
	Process, Exist, %AppName% ;returns 0 if AppName not found
	AppRunning = %ErrorLevel%
	Check_VPN_Connectivity()
	msgbox, %Connected%
	If (Connected = true) ;we are connected to VPN 
	{	;is the program running?
		If (%AppRunning% = 0) ;program isn't running, not good
		{	;run the program
			Run, %AppPath%
		}
		else ;the program is running while the VPN is connected, all good
		{	;do nothing & rest 1 second
			sleep, 1000
		}
	}
	else ;(Connected = false) we are not connected to VPN
	{	;is the program running?
		If (%AppRunning% = 0) ;program isn't running, all good
		{	;do nothing & rest 1 second
			sleep, 1000
		}
		else ;the program is running while the VPN is disconnected, not good
		{	;close the program
			Process, Close, %PID%
		}
	}
}

Check_VPN_Connectivity()
{
	;Perform some task to check if the VPN is on...
	
	if () ;is the VPN connected?
	{	;set Connected to TRUE
		Connected = true
	}
	else ;the VPN is not connected
	{	;set Connected to FALSE
		Connected = false
	}
}

^Escape:: ;Control+Escape ends the script at any time
ExitApp