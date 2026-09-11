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

== Seasons & Phases
- The stars position change throughout the day
- The location of the earth in it's revolution around the Sun also effects the visible stars (see the notion of Summer Constellations and Fall Constellations)
- Some stars, however, are always visible (all year, all night) (These are called "circumpolar")
  - Circumpolar stars are always above the horizon
  - Examples: Big Dipper, Little Dipper, etc.

#example[
  Suppose the constellation Gemini is directly overhead at midnight tonight. What time of day will Gemini be overhead in 6 months?
]
#solution[
  The constellation will be visible at 12:00 rather than at 24:00. The same position on Earth will be in the middle of the day after six months. (See written notes)
]

The *ecliptic* is the apparent path of the Sun on the celestial sphere
  - Our orbital motion projects the Sun into different constellations over the course of the year
  - These constellations make up the zodiac
The Earth's axis remains fixed and tilted (on the scale of about 26000 years) at $23.5degree$
  - The tilt remains approximate the same angle (obliquity) but will slowly precess 

- Because of the tilted apparent position of the Sun in terms of the celestial sphere, the Sun's path will move south (from June to December)
- During the Summer, the northern hemisphere receives more sunlight per unit area and the sun stays above the horizon longer

The Figure-8 analemma up-down motion is caused by the shift in the ecliptic over the calendar year, the side-to-side motion is caused by the changing speed of the Earth's orbital rotation

The spherical nature of the Earth gives rise to the fact that sun rays directed closer to the Equator result in more sunlight per unit area (in the same given season/month)

*Misconceptions*
- "The Earth's orbit is elliptical so the Earth is closer to the Sun in the summer than in the winter" (There is a negligible impact)
- "When the Earth is tilted toward the Sun, the hemisphere tilted toward the Sun is closer than the one pointed away" (This is also a negligible effect, compared to the distance to the Sun the difference is small (0.01%))

The real cause still remains the tilt of the Earth towards the Sun.

The extremes of the seasons lag behind the time of maximum / minimum _insolation_ (i.e the hottest day is not during the Summer solstice, June 21st)
  - This is because it takes time for the Earth to heat up /cool down
