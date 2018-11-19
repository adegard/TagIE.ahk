# TagIE.ahk

***************
FEATURES:</br>
-Simplify your IE automation Scripts with simple readable functions with TagIE.ahk :D </br>
-TagIE auto-waits for a webpage element to appear and interacts with it as soon as it appears</br>
-Tooltip Show Steps</br>
-Element identifier can be id, tagname, classname, or Selector (use Chrome Inspector for that)</br>
</br>
<img src="https://raw.githubusercontent.com/adegard/TagIE.ahk/master/TagIEexample.gif"  align="center">
******************
LIST OF FUNCTIONS:

- tnav("website", "option") : Navigate to webpage ; option: empty: minimized; "max" : Maximized window
- tclick("tag")  : Enter value in Tag field. Tags: Selector (use Chrome Inspector) or id, or name, or class. Insteat of double Quotes, use singlo quotes in Selector (ie "input class='nameclass'")
- tenter("text", "tag")  : Enter value in Tag field. Tags: Selector (use Chrome Inspector) or id, or name, or class
- tread("tag")  : fetch/read element text to variable. Tags: Selector (use Chrome Inspector) or id, or name, or class. Insteat of double Quotes, 
- tsnap() : take snapshot and save it in jpg in "screenshot folder" (require Irfanview)"
- tselect("value", "ele"): SelectDropdown value 
- tscroll("ele"): Scroll page to element

******************
CODE EXAMPLES:


Example 1 : Navigate, enter text in field, click on button, take a screenshot

#include TagIE.ahk

tnav("https://www.google.com","max")

tenter("ciao", "q")

tclick("#tsf > div:nth-child(2) > div.A8SBwf > div.FPdoLc.VlcLAe > center > input[type=submit]:nth-child(1)")

tsnap() 

Sleep, 1000

pwb.Quit()

ExitApp

Esc::ExitApp



******************
Example 2 : Navigate, get data from webpage

#include TagIE.ahk

tnav("http://the-automator.com/web-scraping-with-autohotkey/","max")

Var:=tread("#post-1239 > div > p:nth-child(1) > strong")

MsgBox, "res :" %Var%

Sleep, 1000

pwb.Quit()

ExitApp

Esc::ExitApp

******************
Example 3 : Complete form compilation on Kijiji.it
https://github.com/adegard/TagIE.ahk/blob/master/example3.ahk

******************
SCHEDULE YOUR TASKS:

https://github.com/adegard/AHK-Tasks-scheduler
