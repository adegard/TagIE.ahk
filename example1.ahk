#include TagIE.ahk

tnav("https://www.google.com", "max")

tenter("ciao", "q")

tclick("#tsf > div:nth-child(2) > div.A8SBwf > div.FPdoLc.VlcLAe > center > input[type=submit]:nth-child(1)")

tsnap()

Sleep, 1000

pwb.Quit()

ExitApp

Esc::ExitApp