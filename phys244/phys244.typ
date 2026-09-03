#import "@preview/mousse-notes:2.0.0": *

#let COURSE_NAME = "Classical Mechanics"
#let COURSE_CODE = "PHYS 244"
#let LECTURER = "KIRK KAMINSKY"
#let AUTHOR = "Jeff Khuu"
#let UNIVERSITY = "University of Alberta"
#let SEMESTER = "Fall 2026"

#set document(title: [#COURSE_CODE], author: "Jeff Khuu")

// US Letter size folded in half.
// Readable on screens, and readable as a folded booklet.
// #set page(height: 215.9mm, width: 279.4mm / 2)

// Alternatively, use us-letter.
#set page(paper: "us-letter")

// This must be the last show or set rule
// (because of the `_box-blocks` rule).
#show: style

#title-page(
  subtitle: upper[#COURSE_NAME],
  primary: upper[
    Lectures delivered by \
    _ #LECTURER _\
  ],
  secondary: upper[#UNIVERSITY \ #SEMESTER],
)

= Newtonian Mechanics
We can rewrite Newton's Second Law as many types of differential equation
$
F = m (dif^2 arrow(r))/(dif t^2) = m (dif v)/(dif t)
$
We will also note that Newton's First Law (A zero net force acting on an object means the object's velocity is constant) is a special case of Newton's Second Law.

We will *also* note that Newton's "Laws" are *not* laws! They hold up only in the case of inertial reference frames!

== Inertial and Non-inertial Reference Frames
Some common examples of non-inertial reference frames include the following scenarios:
+ An individual rollerskating inside an accelerating train car. From the reference frame inside the train car, the individual is moving (from rest, hence acceleration) without an apparent net force (since the skates negate the friction)
+ A rotating disk with an object moving across. From the reference frame on the disk, the moving object will seem to spiral around without an apparent net force (this is the coriolis pseudo-force)
+ A train-car with a hanging mass. From the reference of the train-car, while the train is accelerating the mass will appear to be displaced by an angle without an apparent net force.
#figure(caption: [A non-inertial reference frame $S'$ of a moving train-car])[
  #image("noninertial.svg")
]

== Transforming into Rotating Reference Frames
#example[
  
]

