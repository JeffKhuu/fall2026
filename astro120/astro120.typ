#import "@preview/mousse-notes:2.0.0": *

#set document(title: [ASTRO 120], author: "Jeff Khuu")

// US Letter size folded in half.
// Readable on screens, and readable as a folded booklet.
// #set page(height: 215.9mm, width: 279.4mm / 2)

// Alternatively, use us-letter.
#set page(paper: "us-letter")

// This must be the last show or set rule
// (because of the `_box-blocks` rule).
#show: style

#title-page(
  subtitle: upper[Astronomy of the Solar System],
  primary: upper[
    Lectures delivered by \
    _Erik Rosolowsky_\
  ],
  secondary: upper[University of Alberta \ Fall 2026],
)

Course outline:
- The cure seeks to answer "why is exploring the solar system so hard?"
  + Understanding the skies from Earth
    - Attaining a cosmic perspective of the universe
  + How we came to fathom the deepness of the sky
    - Investigating the process of science (and scientific claims)
  + The Laws of the Universe
    - Understand the physical laws and tools we have developed for describing faraway astronomical objects
  + The processes that shape planets and govern their conditions
    - Describe the differences between planets and how the different compositions inside planets affect life/possibility of living
  + The contents of our Solar System (and others)
    - Current and future exploration and space travel
    - Solar systems beyond our own


