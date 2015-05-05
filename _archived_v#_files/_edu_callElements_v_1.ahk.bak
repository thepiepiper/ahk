



wb:=ComObjCreate("InternetExplorer.Application")
wb.visible:=true
url=http://www.reddit.com/r/AskReddit/
wb.navigate(url)
IELoad(wb)
loop, 10
	var classList[A_Index]=wb.Document.getElementsByClassName("comments may-blank")
	msgbox,%classList[A_Index]%
	
msgbox,,all done, all done,0

IELoad(wb)    ;You need to send the IE handle to the function unless you define it as global.
{
	while wb.busy or wb.ReadyState!=4
		sleep 100
}