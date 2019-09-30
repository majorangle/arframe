InitializeComponent() ; boot op

While 1 ; RUN NO OP
WEnd

Func stop()
	Exit
EndFunc   ;==>stop

Func go() ; MAIN LOOP TOGGLE ON/OFF
	InitializeComponent()
	If $runing == False Then
		$runing = True
	Else
		$runing = False
	EndIf
	While $runing
		main()
	WEnd
EndFunc   ;==>go

Func InitializeComponent()
;~ 	ToolTip("InitializeComponent")
	If WinExists($title) Then
		$hWnd = WinWait($title, "", 10)
		$hControl = ControlGetHandle($hWnd, "", "")
		$handle = WinGetHandle($title, "")
		$wPos = WinGetPos($title)
		$wX = Int($wPos[0]) ; 0
		$wY = Int($wPos[1]) ; 0
		If fullscreen() Then
		$centerX = Int($wPos[2]/2) ; 960
		$centerY = Int($wPos[3]/2) ; 540
		Else ; WINDOWED MODE OFFSET CALCULATIONS
		$centerX = Int($wPos[2]/2)-1 ; 960
		$centerY = Int($wPos[3]/2)+11 ; 540
		EndIf
	Else
		MsgBox($MB_SYSTEMMODAL, "Error", "Game not running ", 30)
		Exit
	EndIf
EndFunc   ;==>InitializeComponent

Func fullscreen() ; Check FULLSCREEN
$aWin_Pos = WinGetPos($title)
    If $aWin_Pos[2]&$aWin_Pos[3] = @DesktopWidth&@DesktopHeight Then
		return True
    Else
		return False
    EndIf
EndFunc



