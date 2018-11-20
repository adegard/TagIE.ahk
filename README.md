# TagIE.ahk

***************
<b>FEATURES:</b></br>
-Simplify your IE automation Scripts with simple readable functions with TagIE.ahk :D </br>
-TagIE auto-waits for a webpage element to appear and interacts with it as soon as it appears</br>
-Tooltip Show Steps</br>
-Element identifier can be id, tagname, classname, or Selector 

******************
<b>LIST OF FUNCTIONS:</b>


<div class="ritz grid-container" dir="ltr"><table class="waffle" cellspacing="0" cellpadding="0"><thead><tr><th class="row-header freezebar-origin-ltr"></th><th id="0C0" style="width:186px" class="column-headers-background">A</th><th id="0C1" style="width:989px" class="column-headers-background">B</th></tr></thead><tbody><tr style='height:20px;'><th id="0R0" style="height: 20px;" class="row-headers-background"><div class="row-header-wrapper" style="line-height: 20px;">1</div></th><td class="s0" dir="ltr"><span style="font-size:12pt;font-family:Arial;font-weight:bold;color:#24292e;">Function</span></td><td class="s1" dir="ltr"><span style="font-size:12pt;font-weight:bold;">Description</span></td></tr><tr style='height:20px;'><th id="0R1" style="height: 20px;" class="row-headers-background"><div class="row-header-wrapper" style="line-height: 20px;">2</div></th><td class="s2 softmerge" dir="ltr"><div class="softmerge-inner" style="width: 183px; left: -1px;"><span style="font-size:12pt;font-family:Arial;font-weight:400;color:#24292e;">tnav(&quot;website&quot;, &quot;option&quot;)   </span></div></td><td class="s3" dir="ltr"><span style="font-family:Roboto,Arial;font-weight:400;color:#000000;">Navigate to webpage ; option: empty: minimized; &quot;max&quot; : Maximized window</span></td></tr><tr style='height:20px;'><th id="0R2" style="height: 20px;" class="row-headers-background"><div class="row-header-wrapper" style="line-height: 20px;">3</div></th><td class="s2" dir="ltr"><span style="font-size:12pt;font-family:Arial;font-weight:400;color:#24292e;">tclick(&quot;tag&quot;)   </span></td><td class="s4 softmerge" dir="ltr"><div class="softmerge-inner" style="width: 1187px; left: -1px;"><span style="font-family:Roboto,Arial;font-weight:400;color:#000000;">Enter value in Tag field. Tags: Selector (use Chrome Inspector) or id, or name, or class. Insteat of double Quotes, use singlo quotes in Selector (ie &quot;input class=&#39;nameclass&#39;&quot;)</span></div></td></tr><tr style='height:20px;'><th id="0R3" style="height: 20px;" class="row-headers-background"><div class="row-header-wrapper" style="line-height: 20px;">4</div></th><td class="s2" dir="ltr"><span style="font-size:12pt;font-family:Arial;font-weight:400;color:#24292e;">tenter(&quot;text&quot;, &quot;tag&quot;)   </span></td><td class="s3" dir="ltr"><span style="font-family:Roboto,Arial;font-weight:400;color:#000000;">Enter value in Tag field. Tags: Selector (use Chrome Inspector) or id, or name, or class</span></td></tr><tr style='height:20px;'><th id="0R4" style="height: 20px;" class="row-headers-background"><div class="row-header-wrapper" style="line-height: 20px;">5</div></th><td class="s2" dir="ltr"><span style="font-size:12pt;font-family:Arial;font-weight:400;color:#24292e;">tread(&quot;tag&quot;)   </span></td><td class="s3" dir="ltr"><span style="font-family:Roboto,Arial;font-weight:400;color:#000000;">fetch/read element text to variable. Tags: Selector (use Chrome Inspector) or id, or name, or class. Insteat of double Quotes,</span></td></tr><tr style='height:20px;'><th id="0R5" style="height: 20px;" class="row-headers-background"><div class="row-header-wrapper" style="line-height: 20px;">6</div></th><td class="s2" dir="ltr"><span style="font-size:12pt;font-family:Arial;font-weight:400;color:#24292e;">tsnap()   </span></td><td class="s3" dir="ltr"><span style="font-family:Roboto,Arial;font-weight:400;color:#000000;">take snapshot and save it in jpg in &quot;screenshot folder&quot; (require Irfanview)&quot;</span></td></tr><tr style='height:20px;'><th id="0R6" style="height: 20px;" class="row-headers-background"><div class="row-header-wrapper" style="line-height: 20px;">7</div></th><td class="s2" dir="ltr"><span style="font-size:12pt;font-family:Arial;font-weight:400;color:#24292e;">tselect(&quot;value&quot;, &quot;ele&quot;)  </span></td><td class="s3" dir="ltr"><span style="font-family:Roboto,Arial;font-weight:400;color:#000000;">SelectDropdown value</span></td></tr><tr style='height:20px;'><th id="0R7" style="height: 20px;" class="row-headers-background"><div class="row-header-wrapper" style="line-height: 20px;">8</div></th><td class="s2" dir="ltr"><span style="font-size:12pt;font-family:Arial;font-weight:400;color:#24292e;">tscroll(&quot;ele&quot;)  </span></td><td class="s3" dir="ltr"><span style="font-family:Roboto,Arial;font-weight:400;color:#000000;">Scroll page to element</span></td></tr><tr style='height:20px;'><th id="0R8" style="height: 20px;" class="row-headers-background"><div class="row-header-wrapper" style="line-height: 20px;">9</div></th><td class="s2" dir="ltr"><span style="font-size:12pt;font-family:Arial;font-weight:400;color:#24292e;">techo(&quot;message&quot;)  </span></td><td class="s3" dir="ltr"><span style="font-family:Roboto,Arial;font-weight:400;color:#000000;">return tooltip info during run, it could be text (&quot;text&quot;)o variable (Var)</span></td></tr></tbody></table></div>

*****************

<b>HOW To get IE DOM Selector/HTML elements? Use one of those tools:</b></br>
-use Chrome Inspector </br>
-use iWB2 learner: http://the-automator.com/download/iWB2_Learner.exe </br>
-use IE DOM Selector tool: </br>
x32: https://github.com/adegard/TagIE.ahk/blob/master/IE_selector.exe </br>
x64: https://github.com/adegard/TagIE.ahk/blob/master/IE_selector_x64.exe </br>
(Use Right Click to copy to clipboard and paste it in "Tag" or "element" in following functions)</br>

</br>
<img src="https://raw.githubusercontent.com/adegard/TagIE.ahk/master/GetSelectorsTags.gif"  align="center">

******************
<b>CODE EXAMPLES:</b>

Example 1 : Navigate, enter text in field, click on button, take a screenshot
<pre>
<code>#include TagIE.ahk
tnav("https://www.google.com","max")
tenter("ciao", "q")
tclick("#tsf > div:nth-child(2) > div.A8SBwf > div.FPdoLc.VlcLAe > center > input[type=submit]:nth-child(1)")
tsnap() 
Sleep, 1000
pwb.Quit()
ExitApp
Esc::ExitApp</code>
</pre>

******************
Example 2 : Navigate, get data from webpage
<pre>
<code>#include TagIE.ahk
tnav("http://the-automator.com/web-scraping-with-autohotkey/","max")
Var:=tread("#post-1239 > div > p:nth-child(1) > strong")
techo(Var)
Sleep, 1000
pwb.Quit()
ExitApp
Esc::ExitApp</code>
</pre>
  
******************
Example 3 : Complete form compilation on Kijiji.it
https://github.com/adegard/TagIE.ahk/blob/master/example3.ahk
</br>
<img src="https://raw.githubusercontent.com/adegard/TagIE.ahk/master/TagIEexample.gif"  align="center">

******************
<b>SCHEDULE YOUR TASKS:</b>

https://github.com/adegard/AHK-Tasks-scheduler



