;send right send quote loop

x:=1
sleep,5000

while (x<50)
{
	send,{,}{delete}"{right}"
	x++
}

;