
<h1> TagIE.ahk </h1>
<p><a href="#features">Features</a> | <a href="#setup">Set Up</a> | <a href="#demo">Demo</a> | <a href="#cheat-sheet"><strong>Cheat Sheet</strong></a> | <a href="#DOM-selector">Tutorial</a> | <a href="#examples">Simple Examples</a> | <a href="https://www.youtube.com/channel/UCj_yWYv_K-WJ4PARgEzP07Q/videos" rel="nofollow">Video</a> | <a href="https://github.com/adegard/TagIE_Scripts" rel="nofollow">TagIE Scripts</a> | <a href="https://autohotkey.com/boards/viewtopic.php?f=6&t=59120" rel="nofollow"><strong>AutohotKey Thread</strong></a></p>

<p><strong>TagIE is a tool for digital process automation (RPA). It's a collection of the best ressources and functions done in AutoHotKey the user-friendly language of automation. It is maintained by Arnaud DEGARDIN (<a href="https://www.pc-dream.it" rel="nofollow">PC-Dream.it</a>), a French Developer. To start, check out <a href="#setup">Set Up</a> or above tutorial, examples, or video.</strong></p>

For any question/report a problem: open an <a href="https://github.com/adegard/TagIE.ahk/issues">issue</a>

<a id="user-content-features" class="anchor" aria-hidden="true" href="#features"></a><h3>FEATURES:</h3>
-Simplify your <strong>Internet Explorer and Chrome automation</strong> Scripts with simple readable functions in AutoHotKey language </br>
-<b>Macro Recorder (Beta) : Click on element on IE, TagIE record click sequences<b></br>
-TagIE auto-waits for a webpage element to appear and interacts with it as soon as it appears</br>
-<b>Use <a href="https://www.google.com/search?q=imacros+extension&oq=imacros+extension&aqs=chrome..69i57.9834j0j7&sourceid=chrome" rel="nofollow">iMacros</a> to easily record Macros and convert it to TagIE with tool inside Menu > iMacros_converter</b></br>
-<strong>Log file</strong> (in the same directory) show automation steps done and time, to control testing execution</br>
-<strong>Element identifier Tools</strong> for: id, tagname, classname, and Selectors </br>
-Find/Share scripts from/to <a href="https://github.com/adegard/TagIE_Scripts" rel="nofollow">TagIE Scripts</a></br>
-<strong>Schedule</strong> your TagIE Scripts inside the application, ones or daily</br>
-It's <strong>FREE (Open Source)</strong>

<a id="user-content-demo" class="anchor" aria-hidden="true" href="#demo"></a><h3>DEMO: </h3>
<img src="https://raw.githubusercontent.com/adegard/TagIE.ahk/master/FindingSelectororTaginTagIE.gif"  align="center">
(Use Right Click to copy to clipboard and paste it in "Tag" or "element" in following functions)</br>

******************


******************
<a id="user-content-setup" class="anchor" aria-hidden="true" href="#setup"></a><h3>Set Up:</h3>
- Install AutoHotKey (https://www.autohotkey.com/)
- Save and Unzip <a href="https://github.com/adegard/TagIE.ahk/raw/master/TagIE_Editor.zip" rel="nofollow">TagIE_Editor.zip</a>
- Open "TagIE_Editor.ahk"
- TO USE SCREENSHOTS (tsnap funtion): install Irfanview (https://www.irfanview.com/)


******************
<a id="user-content-examples" class="anchor" aria-hidden="true" href="#examples"></a><h3>CODE EXAMPLES:</h3>

Example 1 : Navigate, enter text in field, click on button, take a screenshot
<pre>
<code>#include TagIE.ahk
tnav("https://www.google.com","")
tenter("ciao", "q", 0)
tclick("#tsf > div:nth-child(2) > div.A8SBwf > div.FPdoLc.VlcLAe > center > input[type=submit]:nth-child(1)", 0)
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
Var:=tread("#post-1239 > div > p:nth-child(1) > strong", 0)
techo(Var)
FileAppend, %Var% `n, Test.txt
Sleep, 1000
pwb.Quit()
ExitApp
Esc::ExitApp</code>
</pre>
  
<a href="https://github.com/adegard/TagIE_Scripts" rel="nofollow">Other TagIE Scripts</a>




