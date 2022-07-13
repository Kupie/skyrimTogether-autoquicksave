#Persistent
InputBox, UserInput, Minutes between quicksaves, Please enter how many minutes between hitting quicksave (F5)
if ErrorLevel
	ExitApp
else if (UserInput = 0)
	ExitApp
else
	timeVar := UserInput * 60000
	MsgBox, Hitting quicksave every %UserInput% minutes
	#Persistent
	SetTimer, PressTheKey, %timeVar%
	Gui, Font, s20
	Gui, Add, Button, gGUIClose, Hit this button to stop Auto QuickSave
	Gui, Show, Center, Auto QuickSave
	Return
	
PressTheKey:
IfWinActive, Skyrim Together
	Send {F5}
Return


GUIClose:
	Gui, Destroy
	ExitApp
Return
