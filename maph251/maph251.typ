#import "@preview/mousse-notes:2.0.0": *

#let COURSE_NAME = "Differential Equations for Physics"
#let COURSE_CODE = "MA PH 251"
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

