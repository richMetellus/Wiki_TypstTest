
typist is a well establish user interface document. This one seems to be very fast rendering compared to other tools out there

*this text is bold*

_This text is italic_

#underline[this text is underline]

This text is 

#set text(font: "DejaVu Math TeX Gyre")
This text using *DejaVu Math TeX Gyre*

#set text(font: "Clicker Script")
Will this use a different font

Every text below this line will use the
#set text(font: "Roboto") 
Roboto
#set text(font: "Clicker Script") 
font.

#set text(font: "Roboto")

+ Enumerated list item 1
+ enumerated list itm2 
  + sub item 1
  + sub item 2
  - bullet point
  - another bullet list
  + re-numbering

  
  
The rendering is very responsive regardless of how fast  or slow i am typing.

#set heading(numbering: "1.a)")

= Header 1
== header 2
=== header 3
==== header 4
===== header 5
====== header 6
======= header 7
======== header 8
========= header 9
========= header 10

= header1 again
== header 2
=== header 3
==== header 4
===== header 5
====== header 6
======= header 7
======== header 8
========= header 9
========= header 10


= This is a serious build 

I want to test how fast the change are watched and rendered when building the 
documentation locally on my host pc. This is actually faster when there is no warning. The only 
problem is that this build will wait for me to finish typing before rendering 
the document. This is not real-time rendering while running it locally and on 
minimal change in the source file, the whole file is parsed, compile and rendered.