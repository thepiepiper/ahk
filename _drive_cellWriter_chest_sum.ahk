;writes sum column
winactivate,Untitled
sleep,4000
columnStart=2
column:=%columnStart%
while 1
{
	;msgbox,%column%
	while (column<18)
	{
		send, =
		send, {$}e1*e%column%{+}
		send, {$}e1*f%column%{+}
		send, {$}e1*g%column%{+}
		send, {$}e1*h%column%{+}
		send, {$}e1*i%column%{+}
		send, {$}e1*j%column%{+}
		send, {$}e1*k%column%{+}
		send, {$}e1*l%column%{+}
		send, {$}e1*m%column%{+}
		send, {$}e1*n%column%{+}
		send, {$}e1*o%column%{+}
		send, {$}e1*p%column%{+}
		send, {$}e1*q%column%{+}
		send, {$}e1*r%column%{+}
		send, {$}e1*s%column%{+}
		send, {$}e1*t%column%{+}
		send, {$}e1*u%column%{+}
		send, {$}e1*v%column%
		send, {enter}
		column=%column%+1
	}
}

ExitApp

Escape::ExitApp