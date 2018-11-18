#include TagIE.ahk

tnav("http://the-automator.com/web-scraping-with-autohotkey/", "max")

Var:=tread("#post-1239 > div > p:nth-child(1) > strong")

MsgBox, "res :" %Var%

Sleep, 1000

pwb.Quit()

ExitApp

Esc::ExitApp