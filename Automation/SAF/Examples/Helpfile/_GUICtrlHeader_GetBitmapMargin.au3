#include <GUIConstantsEx.au3>
#include <GuiHeader.au3>

Global $g_idMemo

Example()

Func Example()
	Local $hGUI, $hHeader

	; Create GUI
	$hGUI = GUICreate("Header", 400, 300)
	$hHeader = _GUICtrlHeader_Create($hGUI)
	_GUICtrlHeader_SetUnicodeFormat($hHeader, True)
	$g_idMemo = GUICtrlCreateEdit("", 2, 24, 396, 274, 0)
	GUICtrlSetFont($g_idMemo, 9, 400, 0, "Courier New")
	GUISetState(@SW_SHOW)

	; Add columns
	_GUICtrlHeader_AddItem($hHeader, "Column 1", 100)
	_GUICtrlHeader_AddItem($hHeader, "Column 2", 100)
	_GUICtrlHeader_AddItem($hHeader, "Column 3", 100)
	_GUICtrlHeader_AddItem($hHeader, "Column 4", 100)

	; Show current bitmap margin
	MemoWrite("Current margin .: " & _GUICtrlHeader_GetBitmapMargin($hHeader))

	; Set new bitmap margin
	_GUICtrlHeader_SetBitmapMargin($hHeader, 8)

	; Show new bitmap margin
	MemoWrite("New margin .....: " & _GUICtrlHeader_GetBitmapMargin($hHeader))

	; Loop until the user exits.
	Do
	Until GUIGetMsg() = $GUI_EVENT_CLOSE
EndFunc   ;==>Example

; Write a line to the memo control
Func MemoWrite($sMessage)
	GUICtrlSetData($g_idMemo, $sMessage & @CRLF, 1)
EndFunc   ;==>MemoWrite
