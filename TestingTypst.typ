#set heading(numbering: "1.")

= Header 1
== header 2
=== header 3
==== header 4
===== header 5
====== header 6
======= header 7
======== header 8
========= header 9
========== header 10


= header1 again
== header 2
=== header 3
==== header 4
===== header 5
====== header 6
======= header 7
======== header 8
========= header 9
========== header 10

typist is a well establish user interface document. This one seems to be very fast rendering compared to other tools out there

#set heading(numbering: "1.b)")

= header1 again

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

/* #set page(width: auto, height: auto) */ // do not work for html

= Syntax for Typst

+ `$$` is used for math formula. 
  - Works in both markup and code mode.
+ Code mode is prefixed with `#`
  - code mode lets you use Typst's scripting features.
+ `[..]` for markup mode.

code mode scripting Example: #(1+2)

== testing nested inline

*bold _italic_ with math*

This is some simple text that can be transform. 
This is a line continuation in raw text mode.

Another paragraph will start here and I will continue typing without pressing enter until the end. [Press Enter now]
One enter is pressed [Press Enter twice]

This is a new paragraph.


*bold _italic_ I have \$2 dollar*


*#underline[bold _italic_ and underline text]*

*#underline[*double bold* _italic_ and underline text]*

#underline[*bold* _italic_ and underline text]

#underline[try *bold* _italic_ and underline text
line can be extended over text and the content is interpreted]. a new text apply to it here.

#text(font: "New Computer Modern")[
  = Background
  In the case of glaciers, fluid
  dynamics principles can be used
  to understand how the movement
  and behaviour of the ice is
  influenced by factors such as
  temperature, pressure, and the
  presence of other fluids (such as
  water).

  This font is contain within the `[]`
]

The "New Computer Modern" font does not apply to this paragraph

/* #set page(width: 10cm, height: auto) */ // not working for HTML

#set heading(numbering: "1.")

= Testing their example from GitHub: Fibonacci Sequence



The Fibonacci sequence is defined through the recurrence relation $F_n = F_(n-1) + F_(n-2_)$. It can also be expressed in _closed form:_

$F_n = round(1 / sqrt(5) phi.alt^n), quad phi.alt  = (1 + sqrt(5)) /2$

#let count = 8
#let nums = range(1, count + 1)
#let fib(n) = (
  if n <= 2 { 1 }
  else { fib(n - 1) + fib(n - 2) }
)

The first #count numbers of the sequence are:

#align(center, table(
  columns: count,
  ..nums.map(n => $F_#n$),
  ..nums.map(n => str(fib(n))),
 )
)


#pagebreak() // will be ignore by html

= Testing other stuff

#align(center, text(12pt)[
  *A fluid dynamic model
  for glacier flow*
])

#grid(
  columns: (1fr, 1fr),
  align(center)[
    Therese Tungsten \
    Artos Institute \
    #link("mailto:tung@artos.edu")
  ],
  align(center)[
    Dr. John Doe \
    Artos Institute \
    #link("mailto:doe@artos.edu")
  ]
)
#align(center)[
  #set par(justify: false)
  *Abstract* \
  #lorem(80)
]

Line break applies to content \
this start in new line. \\ escape with `\`

#pagebreak()

#let customtemplate(myarg) = [
  #set text(font: "IBM Plex Serif")
  #show "something cool": [Typst]
  #myarg
]

#show: customtemplate
I am learning something cool today.
It's going great so far!

#let amazed(term, color: blue) = {
  text(color, box[✨ #term ✨])
}

You are #amazed[beautiful]!
I am #amazed(color: purple)[amazed]

#let task(body, critical: false) = {
  set text(red) if critical
  [- #body]
}

#task(critical: true)[Food today?]
#task(critical: false)[Work deadline]