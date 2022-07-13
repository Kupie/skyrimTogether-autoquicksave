#Persistent
InputBox, UserInput, Minutes between quicksaves, Please enter how many minutes between hitting quicksave (F5)
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

