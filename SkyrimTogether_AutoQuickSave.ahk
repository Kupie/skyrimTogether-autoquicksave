#Persistent
InputBox, UserInput, Seconds between quicksaves, Please enter how many minutes between hitting quicksaves
if ErrorLevel
    Return
else
	timeVar := UserInput * 60000
	MsgBox, Hitting quicksave every %UserInput% minutes
    #Persistent
    SetTimer, PressTheKey, %timeVar%

PressTheKey:
IfWinActive, Skyrim Together
    Send {F5}
Return

