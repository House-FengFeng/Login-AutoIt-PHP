#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>

#Region ### START Koda GUI section ### Form=
$Form1 = GUICreate("Code Đăng Nhập Đơn Giản", 602, 137, -1, -1)
$Label1 = GUICtrlCreateLabel("Tài Khoản:", 8, 10, 106, 28)
GUICtrlSetFont(-1, 16, 800, 0, "Times New Roman")
$Label2 = GUICtrlCreateLabel("Mật Khẩu:", 8, 50, 103, 28)
GUICtrlSetFont(-1, 16, 800, 0, "Times New Roman")
$Input1 = GUICtrlCreateInput("", 112, 8, 481, 31)
GUICtrlSetFont(-1, 16, 400, 0, "Times New Roman")
$Input2 = GUICtrlCreateInput("", 112, 48, 481, 31)
GUICtrlSetFont(-1, 16, 400, 0, "Times New Roman")
$Button1 = GUICtrlCreateButton("Đăng Nhập", 8, 88, 585, 41)
GUICtrlSetFont(-1, 16, 800, 0, "Times New Roman")
GUICtrlSetOnEvent($Button1,'_DangNhap')
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

While 1
    $nMsg = GUIGetMsg()
    Switch $nMsg
        Case $GUI_EVENT_CLOSE
            Exit
        Case $Button1
            _DangNhap()
    EndSwitch
WEnd

Func HttpPost($sURL, $sData = "")
    Local $oHTTP = ObjCreate("WinHttp.WinHttpRequest.5.1")

    $oHTTP.Open("POST", $sURL, False)
    If (@error) Then Return '#Error 300'

    $oHTTP.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded")

    $oHTTP.Send($sData)
    If (@error) Then Return '#Error 400'

    If ($oHTTP.Status <> 200) Then Return '#Error 999'

    Return SetError(0, 0, $oHTTP.ResponseText)
EndFunc   ;==>HttpPost

Func _DangNhap()
    $Link = 'http://localhost/login/'
    $Data = 'user=' & GUICtrlRead($Input1) & '&pass=' & GUICtrlRead($Input2)
    $Post = HttpPost($Link,$Data)
    Msgbox(0,"",$Post)
EndFunc
