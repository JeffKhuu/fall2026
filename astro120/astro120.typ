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

== Our Place in the Universe
Earth orbits our sun. Our sun is one more than 100 billion stars in the *Milky Way Galaxy*. The *Milky Way Galaxy* is one of more than 50 galaxies in the *Local Group*. The *Local Group* is one small part of the *Local Supercluster* which in turn is one small part of the *universe*

The universe is believed to have begun in the *Big Bang*, wherein the universe has been expanding ever since, with matter collecting in localized regions due to the effects of gravity.

The Big Bang essentially only produced two elements (hydrogen and helium) but since then the life cycle of stars has created heavier elements conducive for life.

== The Local Sky
The local sky is a model for compressing the vast distances between stars, planets and astronomical objects whereby the sky is mapped onto a hemisphere (dome) with the horizon being defined as the boundary between the Earth and the sky.

The point directly overhead is called the *zenith*, the *meridian* is a half-circle stretching from the horizon due north to the horizon due south.

We can use the local sky to pinpoint any location using the direction (angle/direction from the horizon) and its altitude (angle above the horizon)

The deliberate lack of depth for astronomical objects in the local sky means we can describe objects using their *angular size* and distances using their *angular distance*, for more precision, each angular degree can be split into "arcminutes" (') and "arcseconds" (")

$
"angular size" / (360 degree) = "physical size" / (2 pi "distance")
$

= Understanding Earth

== The Moon
The moon orbits the Earth at a period of approximately 29.5 days. (This also happens to be the origin of the word "month")

As the moon orbits Earth it will undergo numerous lunar phases:
*New Moon -> Waxing Crescent -> First Quarter -> Waxing Gibbous -> Full Moon -> Waning Gibbous -> Third Quarter -> Waning Crescent*

The term *waxing* can be thought of to mean "increasing" whereas the term *waning* can be thought of to mean "decreasing"

A new moon occurs when the moon is approximately between the Earth and the sun before changing phases by rotating counterclockwise

- A *new moon* rises and sets with the sun
- A *waxing crescent* rises in the mid-morning, highest in the mid-afternoon and sets in the late evening
- A *first quarter* moon rises at noon, highest during sunset and sets at midnight
- A *waxing giobbous* rises in the mid-afternoon, highest at the late evening and sets before dawn
- A *full moon* rises at sunset, is highest at midnight and sets during sunrise
- A *waning gibbous* rises in the late evening, highest before dawn and sets in the mid-morning
- A *third quarter moon* rises at midnight, highest during sunrise and sets at noon
- A *waning crescent* rises before dawn, is highest at mid-morning and sets mid-afternoon

The Moon's rotation is synchronous with its orbit on Earth (not by coincidence, it is caused by the Earth's gravitation affects) thus the Moon rotates $360degree$ approximately every 29.5 days.
