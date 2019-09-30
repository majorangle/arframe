#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3
 Author:         MajorLeearmy
 Script Version 0.7

 Script Function:
	Press CAPSLOCK to TOGGLE - AUTOFIRE
	Press END to CLOSE
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

#include <MsgBoxConstants.au3>
#include <variables.au3>
#include <functions.au3>

Func main()
;~ 	ToolTip($wX &":"&$wY &":"& $wX+$centerX-2 &":"& $wY+$centerY-2 &":"&  $wX+$centerX+1 &":"& $wY+$centerY+1)
	$aCoord = PixelSearch($wX+$centerX-2, $wY+$centerY-2, $wX+$centerX+1, $wY+$centerY+1, 0XFF0000, 89)
		If Not @error Then
			MouseDown("left")
			Sleep(Random(10,750))
			MouseUp("left")
		EndIf
EndFunc   ;==>main
