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
Memorize the metric prefixes ($10^(-9)$ to $10^9$)

= The Scale of the Universe
#epigraph(attribution: "Douglas Adams")[Space is big. You just won't believe how vastly,
hugely, mind- bogglingly big it is. I mean, you may
think it's a long way down the road to the
chemist's, but that's just peanuts to space.]

Taking the size of the earth to be two scale meters (instead of $1.3 times 10^7$m) then the sun (that is 1 AU / 8 light minutes)

$
2 "scale meters" = 1.3 times 10^7 "m" \
1.5 times 10^11 "m (1 AU)" dot (2 "scale meters")/(1.3 times 10^7 "m" ) &approx 20 "scale kilometers"
$

#example[
The nearest star is 4.3 lightyears away, how many scale meters away is it?
]
#solution[
  $4.3 "lightyears" = 9.5 times 10^15 "m"$
  $
  4.3 "ly" dot (9.5 times 10^15 "m")/(1 "ly") dot (2 "scale m")/(1.3 times 10^7 "m") approx 60 times 10^8 "m"
  $
]

If the Sun is 5 cm across then the nearest star is in Vancouver

The entirety of space is immense, there are many non-uniformly spaced scales depending on which neighbourhood of space you are attempting to describe

*note: a parsec is approximately three lightyears*

- Galaxies comes in groups and clusters (our galaxy, the Milky Way is part of the "Local Group"), each galaxies group pull together from their own gravity

Galaxy groups and clusters are connected in filaments on the largest scales caused by gravity

Most of the matter in the universe is dark matter, we know it exists however.

= Sky Motions
*Note: The seasons dissapear if there is no axial tilt*

== The Celestial Sphere
It is a hemispherical model on which stars on projected which acts as an abstraction to simplify the view of the sky.
- We make the assumption that stars do not move
- We assume that all stars are "infinitely" far away (such that the distances between each star is negligible)

- We define the *horizon* to be the line between the sky and the ground
- We define the *zenith* to be the point directly overhead
- We define the *meridian* to be the line from the north to the south through the zenith)
- An object is *transiting* when a celestial object crosses the meridian (the highest altitude point in its path)

- The Earth's rotation turns the planet within the celestial sphere (from top down looking at the north pole, it appears to rotate counter clockwise )

- Note: There are locations (within the arctic circle and below the antarctic circle) where the sun does not rise for periods of the year

== Latitude and Longitude
The coordinate system for the Earth. Edmonton is at $53.5degree "N" 113.5degree"W"$, the prime meridian is through Greenwich, England.

$1degree = 60' "(arcminutes)"$

$60\" = 60' "(arcseconds)"$

== Celestial Vocabulary
- North Pole -> North Celestial Pole
- South Pole -> South Celestial Pole
- Equator -> Celestial Equator
- Latitude -> "Declination"
- Longitude -> "Right Ascension"

== Angular Distance
$
"physical size" = "angular size" / 360degree times 2 pi times "distance"
$

