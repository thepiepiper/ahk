SetTitleMatchMode,2
SetTitleMatchMode,Slow
time:=60 ;minutes
oneMinute:=60000
while (time>=0) {
	time-=1
	sleep, %oneMinute%
	if (mod(time,3)=0) {
		WinGetActiveTitle,activeWindow
		WinActivate,StarTrek
		sleep,100
		send,{down}
		sleep,100
		WinActivate, %activeWindow% 
	} 
}
send,{down 20}
ExitApp
Escape::ExitApp