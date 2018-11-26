
<h1> TagIE.ahk </h1>
<p><a href="#features">Features</a> | <a href="#setup">Set Up</a> | <a href="#demo">Demo</a> | <a href="#cheat-sheet"><strong>Cheat Sheet</strong></a> | <a href="#DOM-selector">Tutorial</a> | <a href="#examples">Simple Examples</a> | <a href="https://www.youtube.com/channel/UCj_yWYv_K-WJ4PARgEzP07Q/videos" rel="nofollow">Video</a> | <a href="https://gist.github.com/search?utf8=%E2%9C%93&q=TagIE&ref=searchresults" rel="nofollow">TagIE Gists</a> | <a href="https://autohotkey.com/boards/viewtopic.php?f=6&t=59120" rel="nofollow"><strong>AutohotKey Thread</strong></a></p>

<p><strong>TagIE is a tool for digital process automation (RPA). It's working like <a href="https://github.com/kelaberetiv/TagUI" rel="nofollow">TagUI</a>, but in user-friendly language AutoHotKey. It is maintained by Arnaud DEGARDIN (<a href="https://www.pc-dream.it" rel="nofollow">PC-Dream.it</a>), a French Developer. To start, check out <a href="#setup">Set Up</a> or above tutorial, examples, or video.</strong></p>

For any question/report a problem: open an <a href="https://github.com/adegard/TagIE.ahk/issues">issue</a>

<a id="user-content-features" class="anchor" aria-hidden="true" href="#features"></a><h3>FEATURES:</h3>
-Simplify your <strong>Internet Explorer and Chrome automation</strong> Scripts with simple readable functions in AutoHotKey language </br>
-TagIE auto-waits for a webpage element to appear and interacts with it as soon as it appears</br>
-<strong>Log file</strong> (in the same directory) show automation steps done and time, to control testing execution</br>
-<strong>Element identifier Tools</strong> for: id, tagname, classname, and Selectors </br>
-Find/Share scripts from/to <a href="https://gist.github.com/search?utf8=%E2%9C%93&q=TagIE&ref=searchresults" rel="nofollow"><strong>TagIE Gist List</strong></a></br>
-<strong>Schedule</strong> your TagIE Scripts inside the application, ones or daily</br>
-It's <strong>FREE (Open Source)</strong>

<a id="user-content-demo" class="anchor" aria-hidden="true" href="#demo"></a><h3>DEMO: </h3>
<img src="https://raw.githubusercontent.com/adegard/TagIE.ahk/master/FindingSelectororTaginTagIE.gif"  align="center">
(Use Right Click to copy to clipboard and paste it in "Tag" or "element" in following functions)</br>

******************
<a id="user-content-cheat-sheet" class="anchor" aria-hidden="true" href="#cheat-sheet"></a><h3>LIST OF FUNCTIONS:</h3>

<div class="ritz grid-container" dir="ltr"><table class="waffle" cellspacing="0" cellpadding="0"><thead><tr><th class="row-header freezebar-origin-ltr"></th><th id="0C0" style="width:186px" class="column-headers-background">A</th><th id="0C1" style="width:989px" class="column-headers-background">B</th></tr></thead><tbody><tr style='height:20px;'><th id="0R0" style="height: 20px;" class="row-headers-background"><div class="row-header-wrapper" style="line-height: 20px;">1</div></th><td class="s0" dir="ltr"><span style="font-size:12pt;font-family:Arial;font-weight:bold;color:#24292e;">Function</span></td><td class="s1" dir="ltr"><span style="font-size:12pt;font-weight:bold;">Description</span></td></tr><tr style='height:20px;'><th id="0R1" style="height: 20px;" class="row-headers-background"><div class="row-header-wrapper" style="line-height: 20px;">2</div></th><td class="s2 softmerge" dir="ltr"><div class="softmerge-inner" style="width: 183px; left: -1px;"><span style="font-size:12pt;font-family:Arial;font-weight:400;color:#24292e;">tnav(&quot;website&quot;, &quot;option&quot;)   </span></div></td><td class="s3" dir="ltr"><span style="font-family:Roboto,Arial;font-weight:400;color:#000000;">Navigate to webpage ; option: empty: minimized; &quot;max&quot; : Maximized window</span></td></tr><tr style='height:20px;'><th id="0R2" style="height: 20px;" class="row-headers-background"><div class="row-header-wrapper" style="line-height: 20px;">3</div></th><td class="s2" dir="ltr"><span style="font-size:12pt;font-family:Arial;font-weight:400;color:#24292e;">tclick(&quot;tag&quot;)   </span></td><td class="s4 softmerge" dir="ltr"><div class="softmerge-inner" style="width: 1187px; left: -1px;"><span style="font-family:Roboto,Arial;font-weight:400;color:#000000;">Click on Tag element/ Selector or id, or name, or class. or Text (Innertext) Insteat of double Quotes, use singlo quotes in Selector (ie &quot;input class=&#39;nameclass&#39;&quot;)</span></div></td></tr><tr style='height:20px;'><th id="0R3" style="height: 20px;" class="row-headers-background"><div class="row-header-wrapper" style="line-height: 20px;">4</div></th><td class="s2" dir="ltr"><span style="font-size:12pt;font-family:Arial;font-weight:400;color:#24292e;">tenter(&quot;text&quot;, &quot;tag&quot;)   </span></td><td class="s3" dir="ltr"><span style="font-family:Roboto,Arial;font-weight:400;color:#000000;">Enter value in Tag field. Tags: Selector (use Chrome Inspector) or id, or name, or class</span></td></tr><tr style='height:20px;'><th id="0R4" style="height: 20px;" class="row-headers-background"><div class="row-header-wrapper" style="line-height: 20px;">5</div></th><td class="s2" dir="ltr"><span style="font-size:12pt;font-family:Arial;font-weight:400;color:#24292e;">tread(&quot;tag&quot;)   </span></td><td class="s3" dir="ltr"><span style="font-family:Roboto,Arial;font-weight:400;color:#000000;">fetch/read element text to variable. Tags: Selector (use Chrome Inspector) or id, or name, or class. Insteat of double Quotes,</span></td></tr><tr style='height:20px;'><th id="0R5" style="height: 20px;" class="row-headers-background"><div class="row-header-wrapper" style="line-height: 20px;">6</div></th><td class="s2" dir="ltr"><span style="font-size:12pt;font-family:Arial;font-weight:400;color:#24292e;">tsnap()   </span></td><td class="s3" dir="ltr"><span style="font-family:Roboto,Arial;font-weight:400;color:#000000;">take snapshot and save it in jpg in &quot;screenshot folder&quot; (require Irfanview)&quot;</span></td></tr><tr style='height:20px;'><th id="0R6" style="height: 20px;" class="row-headers-background"><div class="row-header-wrapper" style="line-height: 20px;">7</div></th><td class="s2" dir="ltr"><span style="font-size:12pt;font-family:Arial;font-weight:400;color:#24292e;">tselect(&quot;value&quot;, &quot;ele&quot;)  </span></td><td class="s3" dir="ltr"><span style="font-family:Roboto,Arial;font-weight:400;color:#000000;">SelectDropdown value</span></td></tr><tr style='height:20px;'><th id="0R7" style="height: 20px;" class="row-headers-background"><div class="row-header-wrapper" style="line-height: 20px;">8</div></th><td class="s2" dir="ltr"><span style="font-size:12pt;font-family:Arial;font-weight:400;color:#24292e;">tscroll(&quot;ele&quot;)  </span></td><td class="s3" dir="ltr"><span style="font-family:Roboto,Arial;font-weight:400;color:#000000;">Scroll page to element</span></td></tr><tr style='height:20px;'><th id="0R8" style="height: 20px;" class="row-headers-background"><div class="row-header-wrapper" style="line-height: 20px;">9</div></th><td class="s2" dir="ltr"><span style="font-size:12pt;font-family:Arial;font-weight:400;color:#24292e;">techo(&quot;message&quot;)  </span></td><td class="s3" dir="ltr"><span style="font-family:Roboto,Arial;font-weight:400;color:#000000;">return tooltip info during run, it could be text (&quot;text&quot;)o variable (Var)</span></td></tr></tbody></table></div>
<b>...ann many other functions and Tools for RPA and Web-Scraping!</b>
NOTE:
FileAppend, %Var% `n, Test.txt ;Native AutoHotKey Function

******************
<a id="user-content-setup" class="anchor" aria-hidden="true" href="#setup"></a><h3>Set Up:</h3>
- Install AutoHotKey (https://www.autohotkey.com/)
- Save and Unzip TagIE_Editor.zip
- Open "TagIE_Editor.ahk"
- TO USE SCREENSHOTS (tsnap funtion): install Irfanview (https://www.irfanview.com/)

******************
<a id="user-content-examples" class="anchor" aria-hidden="true" href="#examples"></a><h3>CODE EXAMPLES:</h3>

Example 1 : Navigate, enter text in field, click on button, take a screenshot
<pre>
<code>#include TagIE.ahk
tnav("https://www.google.com","")
tenter("ciao", "q")
tclick("#tsf > div:nth-child(2) > div.A8SBwf > div.FPdoLc.VlcLAe > center > input[type=submit]:nth-child(1)")
tsnap() 
Sleep, 1000
pwb.Quit()
ExitApp
Esc::ExitApp</code>
</pre>

******************
Example 2 : Navigate, get data from webpage, save (append) in file
<pre>
<code>#include TagIE.ahk
tnav("http://the-automator.com/web-scraping-with-autohotkey/","")
Var:=tread("#post-1239 > div > p:nth-child(1) > strong")
techo(Var)
FileAppend, %Var% `n, Test.txt
Sleep, 1000
pwb.Quit()
ExitApp
Esc::ExitApp</code>
</pre>
  
<a href="https://gist.github.com/search?utf8=%E2%9C%93&q=TagIE&ref=searchresults" rel="nofollow"><strong>See Advanced TagIE Examples</strong></a>




