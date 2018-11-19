;@A.DEGARDIN 2018, TagIE.ahk v1 : simplify IE Automation functions
; based on other people works. References:
;http://the-automator.com/web-scraping-with-autohotkey/
;https://autohotkey.com/boards/viewtopic.php?t=19889
;*****************************************************
;LIST OF FUNCTIONS:
;******************
/*
tnav("website", "option") : Navigate to webpage ; option: empty: minimized; "max" : Maximized window
tclick("tag") : Enter value in Tag field. Tags: Selector (use Chrome Inspector) or id, or name, or class. Insteat of double Quotes, use singlo quotes in Selector (ie "input class='nameclass'")
tenter("text", "tag") : Enter value in Tag field. Tags: Selector (use Chrome Inspector) or id, or name, or class
tread("tag") : fetch/read element text to variable. Tags: Selector (use Chrome Inspector) or id, or name, or class. Insteat of double Quotes,
tsnap() : take snapshot and save it in jpg in "screenshot folder" (require Irfanview)"
tselect("value", "ele"): SelectDropdown value 
*/


    ToolTip, Starting IE...
    pwb := ComObjCreate("InternetExplorer.Application") ;create IE Object
    pwb.visible:=true  ; Set the IE object to visible



tselect(value, ele)
{
    ToolTip, Select in dropdown %ele%
    WinActivate ahk_class IEFrame
    ControlFocus, Internet Explorer_Server1, ahk_class IEFrame
    
    pwb := PWB_Init(WinTitle) ; replaces WinGetTitle and PWB_Get()
    
pwb.document.GetElementsByTagName(ele).item[0].selectedIndex :=0 ;Set Tagname and Array value
pwb.document.GetElementsByTagName(ele).item[0].Value := value ;Set Tagname and Array value
pwb.document.querySelectorAll(ele).item[0].selectedIndex :=0 ;Set Tagname and Array value
pwb.document.querySelectorAll(ele).item[0].Value := value ;Set Tagname and Array value
pwb.document.GetElementsByName(ele).item[0].selectedIndex :=0 ;Set Tagname and Array value
pwb.document.GetElementsByName(ele).item[0].Value := value ;Set Tagname and Array value
pwb.document.getElementByID(ele).item[0].selectedIndex :=0 ;Set Tagname and Array value
pwb.document.getElementByID(ele).item[0].Value := value ;Set Tagname and Array value
pwb.document.getElementsByClassName(ele).item[0].selectedIndex :=0 ;Set Tagname and Array value
pwb.document.getElementsByClassName(ele).item[0].Value := value ;Set Tagname and Array value

pwb.document.querySelectorAll(ele)[0].selectedIndex :=0 ;Set Tagname and Array value
pwb.document.querySelectorAll(ele)[0].Value := value ;Set Tagname and Array value

   Sleep,500
    return 
}

tsnap()
{
    ToolTip, Snap Page to jpg

    PR =%A_ProgramFiles%\IrfanView\i_view32.exe

    Destination:= A_ScriptDir . "\screenshot"
    IfNotExist, %Destination%
      FileCreateDir, %Destination%
    f1:=destination  
    f4 = 80 ;jpg save quality - I have no idea how to check this

    ivParams := "/capture=X" 3 "/convert=" F1 "\snap_" A_Now ".jpg" "/jpgq=" f4
    Runwait, "%pr%" "%ivParams%"
    run,%destination%                          ;- open folder
}

tread(ele)
{
    ToolTip,Scrap values...

    WinActivate ahk_class IEFrame
    ControlFocus, Internet Explorer_Server1, ahk_class IEFrame
    pwb := PWB_Init(WinTitle) ; replaces WinGetTitle and PWB_Get()

    Var:=pwb.document.querySelectorAll(ele)[0].innerTEXT 
    Return %Var%
}



tnav(url, option)
{
    ToolTip,Navigate to %url%
    WinActivate ahk_class IEFrame
    ControlFocus, Internet Explorer_Server1, ahk_class IEFrame
    pwb := PWB_Init(WinTitle) ; replaces WinGetTitle and PWB_Get()

    pwb.Navigate(url) ;Navigate to URL
    
    if (option="max")
    WinMaximize, % "ahk_id " pwb.HWND
    
    while pwb.busy or pwb.ReadyState != 4 ;Wait for page to load
        Sleep, 100
    Sleep, 1000
    return 
}

tclick(ele)
{
    ToolTip, Click on element %ele%
    WinActivate ahk_class IEFrame
    ControlFocus, Internet Explorer_Server1, ahk_class IEFrame
    pwb := PWB_Init(WinTitle) ; replaces WinGetTitle and PWB_Get()

   pwb.document.querySelectorAll(ele)[0].click()
   pwb.document.GetElementsByName(ele).item[0].click() 
   pwb.document.getElementByID(ele).item[0].click() 
   pwb.document.getElementsByClassName(ele).item[0].click() 
   
   pwb.document.all.tags(ele).item[0].fireEvent("onclick")  
    MouseClick  := pwb.document.createEvent("MouseEvent")  ;Mouse Click
    MouseClick.initMouseEvent("click",true,false,,,,,,,,,,,,,0) ;Initialize Event
    pwb.document.querySelectorAll(ele)[0].dispatchEvent(MouseClick) 
    
   Sleep,500
    return 
}

tenter(val, ele)
{
    ToolTip, Enter text in element %ele%

    WinActivate ahk_class IEFrame
    ControlFocus, Internet Explorer_Server1, ahk_class IEFrame
    pwb := PWB_Init(WinTitle) ; replaces WinGetTitle and PWB_Get()
   pwb.document.querySelectorAll(ele)[0].value := val
   pwb.document.GetElementsByName(ele).item[0].Value :=val ;Object Name- Set array value
   pwb.document.getElementByID(ele).item[0].Value := val ;Unique ID-with dashes
   pwb.document.getElementsByClassName(ele).item[0].Value := val ;Set Classname and Array value


   Sleep,500
    return 
}



;*****************************IE POINTER LIB*******************************
;thanks to @berban lib: https://autohotkey.com/boards/viewtopic.php?t=19889
PWB_Get(WinTitle="A", Svr#=1) ; Jethrow - http://www.autohotkey.com/board/topic/47052-basic-webpage-controls-with-javascript-com-tutorial/
{
	Static msg := DllCall("RegisterWindowMessage", "str", "WM_HTML_GETOBJECT")
	, IID := "{0002DF05-0000-0000-C000-000000000046}" ; IID_IWebBrowserApp
	;,IID := "{332C4427-26CB-11D0-B483-00C04FD90119}" ; IID_IHTMLWindow2
	SendMessage, msg, 0, 0, Internet Explorer_Server%Svr#%, %WinTitle%
	If (ErrorLevel != "FAIL") {
		lResult := ErrorLevel, VarSetCapacity(GUID, 16, 0)
		If (DllCall("ole32\CLSIDFromString", "wstr", "{332C4425-26CB-11D0-B483-00C04FD90119}", "ptr", &GUID) >= 0) {
			DllCall("oleacc\ObjectFromLresult", "ptr", lResult, "ptr", &GUID, "ptr", 0, "ptr*", pdoc)
			Return ComObj(9, ComObjQuery(pdoc, IID, IID), 1), ObjRelease(pdoc)
		}
	}
	MsgBox, 262160, %A_ScriptName% - %A_ThisFunc%(): Error,  Unable to obtain browser object (PWB) from window:`n`n%WinTitle%
}

PWB_Init(WinTitle="")
{
	Global PWB, Element
	PWB_Clear(False), ComObjError(False)
	If !PWB or (WinTitle <> "") {
		TitleMatchMode := A_TitleMatchMode, Element := ""
		SetTitleMatchMode, RegEx
		HWND := WinExist("ahk_class IEFrame")
		SetTitleMatchMode, %TitleMatchMode%
		If !HWND {
			MsgBox, 262160, %A_ScriptName% - %A_ThisFunc%(): Error, No internet explorer windows exist.
			Return
		}
		If (WinTitle <> "") and WinExist(WinTitle " ahk_class IEFrame")
			PWB := PWB_Get(WinTitle)
		Else IfWinActive, ahk_class IEFrame
			PWB := PWB_Get("A")
		Else
			PWB := PWB_Get("ahk_id " HWND)
	}
	Return PWB
}


PWB_Clear(Set=True)
{
	PWB_DefaultTimeout = 1500
	;------------------------------------------------------------------------------------------------------------------------
	Global Element, PWB, PWB_Timeout
	Static Enabled, Initialized
	If !Initialized {
		If (PWB_Timeout = "")
			PWB_Timeout := PWB_DefaultTimeout
		Initialized := True
	}
	If Set in On,Off
		Enabled := (Set = "On")
	Else If (Enabled = "")
		Enabled := True
	If PWB_Timeout and Enabled
		If Set
			SetTimer, %A_ThisFunc%, %PWB_Timeout%
	Else
		SetTimer, %A_ThisFunc%, Off
	Return
	PWB_Clear:
	Element := PWB := ""
	Return
}



