;array containing possible characters
alphabet:=["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","0","1","2","3","4","5","6","7","8","9","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","`","~","!","@","#","$","%","^","&","*","(",")","_","-","+","=","{","}","[","]","\","|",":",";","<",">",",",".","?","/"]
sleep,1000 ;wait 1 second then begin the program
length:=1 ;keeps track of how long the password is
maxLength:=100 ;the length you want your password to be
while ( length < maxLength + 1) ;the +1 compensates for the < stopping one character short
{
	Random, randomLetterPosition, 1, 92 ;random position from 1 to 92 (92 is length of array)
	randomLetter:=alphabet[randomLetterPosition] ;a random element in the array
	send, %randomLetter% ;sends the element to the active cursor position
	length++ ;increments length by 1
}

;test the password on this comment line if you wish
;

