;writes sum column
SetKeyDelay,50,-1
winactivate,Chest
sleep,4000
columnStart:=2
column=%columnStart%
while 1 ;(winactive,Chest 2015 - Google Sheets)
{
	;msgbox,%column%
	while (column<18)
	{
		;msgbox,%column%
		send, =
		send, {$}e1{*}e%column%{+}
		send, {$}e1{*}f%column%{+}
		send, {$}e1{*}g%column%{+}
		send, {$}e1{*}h%column%{+}
		send, {$}e1{*}i%column%{+}
		send, {$}e1{*}j%column%{+}
		send, {$}e1{*}k%column%{+}
		send, {$}e1{*}l%column%{+}
		send, {$}e1{*}m%column%{+}
		send, {$}e1{*}n%column%{+}
		send, {$}e1{*}o%column%{+}
		send, {$}e1{*}p%column%{+}
		send, {$}e1{*}q%column%{+}
		send, {$}e1{*}r%column%{+}
		send, {$}e1{*}s%column%{+}
		send, {$}e1{*}t%column%{+}
		send, {$}e1{*}u%column%{+}
		send, {$}e1{*}v%column%
		send, {enter}
		column+=1
	}
}

ExitApp

Escape::
	ExitApp
Return