#import "@preview/mousse-notes:2.0.0": *

#let COURSE_NAME = "Classical Mechanics"
#let COURSE_CODE = "PHYS 244"
#let LECTURER = "KIRK KAMINSKY"
#let AUTHOR = "Jeff Khuu"
#let UNIVERSITY = "University of Alberta"
#let SEMESTER = "Fall 2026"

#set document(title: [#COURSE_CODE], author: "Jeff Khuu")
#set math.equation(numbering: "(1)")

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

== An Example of Transforming into a Rotating Reference Frame
#example[
  Find a set of transformations to transform the point $P$ from the x-y coordinate system to the rotating x'-y' coordinate system.
  #align(center)[
    #image("rotatingreference.svg", width: 50%)
  ]
]
#solution[
  We can write the cartesian coordinates $x$ and $y$ in terms of $beta$ and $r$ as well as $phi$ in terms of $beta$ and $theta$
  $
    x = r cos(beta)
  $ <ex1.x>
  $
    y = r sin(beta)
  $ <ex1.y>
  $
    phi = beta - theta(t) #h(10pt)
  $
  Similarly we can write the coordinates $x'$ and $y'$ in terms of our known quantities
  $
    x' = r cos(beta - theta(t))\
    y' = r sin(beta - theta(t))
  $
  Now recall that $cos(alpha - beta) = cos(alpha)cos(beta)+sin(alpha)sin(beta)$ and $sin(alpha - beta) = sin(alpha)cos(beta) - sin(beta) cos(alpha)$ thus,
  $
    x' = r cos(beta)cos(theta(t)) + r sin(beta) sin(theta(t))\
    y' = r sin(beta)cos(theta(t)) - r cos(beta) sin(theta(t))
  $
  Notice that we can substitute @ex1.x and @ex1.y into each term to simplify $x'$ and $y'$ in terms of $x$ and $y$
  $
    x' = x cos(theta(t)) + y sin(theta(t))\
    y' = - x sin(theta(t)) + y cos(theta(t)) \
  "(We suggestively move the second term in front)"
  $
  We have arrived to a solution but we can rewrite in an even more elegant form using matrices
  $
  vec(x', y') = underbrace(mat(cos(theta(t)), sin(theta(t)); -sin(theta(t)), cos(theta(t))), O) vec(x, y)
  $
  Notice that for any $0 <= t <= 2 pi$ $O$ is the two-dimensional rotation matrix!
]

In our written notes we expand on our notes even further, to demonstrate that the rotating coordinate system does in-fact represent a non-inertial reference frame. See the written notes for more details on that! (However, trivially we can imagine from the rest frame of the rotating reference frame that if $P$ were moving it would curve unexpectedly@)


