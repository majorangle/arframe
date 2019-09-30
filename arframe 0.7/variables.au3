; INI files
$dataFile = @ScriptDir & "\data\data.ini"

;[AutoItSetOption]
AutoItSetOption("MouseClickDelay", IniRead($dataFile, "AutoItSetOption", "MouseClickDelay", "0"))
AutoItSetOption("MouseClickDownDelay", IniRead($dataFile, "AutoItSetOption", "MouseClickDownDelay", "0"))
AutoItSetOption("MouseClickDragDelay", IniRead($dataFile, "AutoItSetOption", "MouseClickDragDelay", "0"))
;[Opt]
Opt("SendKeyDelay", IniRead($dataFile, "Opt", "SendKeyDelay", "0"))
Opt("SendKeyDownDelay", IniRead($dataFile, "Opt", "SendKeyDownDelay", "0"))
;[data]
$title = IniRead($dataFile, "data", "title", "Warframe")
;[HotKeySet]
HotKeySet(IniRead($dataFile, "HotKeySet", "stop", "{END}"), "stop")
HotKeySet(IniRead($dataFile, "HotKeySet", "go", "{CAPSLOCK}"), "go")


$runing = False


; Window Variables
$hWnd = Null
$hControl = Null
$handle = Null
$centerX = 960
$centerY = 540
$wX = 0
$wY = 0

$log = "||||||||||||||||||||||||"
