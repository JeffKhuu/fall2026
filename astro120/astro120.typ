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
*Note: The seasons disappear if there is no axial tilt*

We can determine whether the phase is waxing/waning crescent depending on the side of the moon that is lit (left => waning crescent (in the northern hemisphere))

In the northern hemisphere,
D => Waxing
O => Full Moon
C => Waning

In the southern hemisphere,
C => Waxing
O => Full Moon
D => Waning

=== Rising and Setting Times
- Time of day is defined by your position on Earth
- You can figure out the time using mental geometry, assuming the sunlight comes from a single direction, the rising/setting times can be determined by your vision and rotating your head (counterclockwise)

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

== Lunar Phases
- Moon phases arise from the moon's orbit around Earth, depending on the time of the month, we see different parts of it illuminated
- The same side is always facing the Earth (nearside) due to tidal locking

We always see the same face, but time lapsed we see it wobble (this is due to the elliptical orbit and the difference between perigee and apogee) 

A "super moon" is a full moon when the moon is at perigee (it will appear roughly 7% larger)

== Eclipses
Eclipses occur when the Sun, Moon and Earth all lie in a (near) perfect line. The shadow of the eclipsed object is projected onto another

The orbital planes are not parallel, there are two "seasons" for eclipses that are available, similarly the wobble "precession" of the moon leads to a predictable cycle for eclipses ("Saros cycle"), every 18 years and 11.33 days

=== A Solar Eclipse
An eclipse where sol is eclipsed, creates the "umbra" in which the complete sun will be blocked out and the "penumbra"

Only certain parts of the Earth get a solar eclipse (and "total solar eclipse") because of the size of the umbra

Occur only during *new moon* (EXAM!)

- "Partial" => Only in the penumbra
- "Annular" => The Moon is too far for the umbra to strike the surface (ring around the moon)
- "Total" => Sun completely eclipsed by moon

=== A Lunar Eclipse
An eclipse where the moon is eclipsed

During a lunar eclipse, we can see red light projected onto the moon (red, for the same reason sunsets are red)

- "Partial" only part of the moon is found in the umbra
- "Penumbral" => moon is not carried through the umbra of the Earth

Occur only during *full moon* (EXAM!)
- Red Moon is due to blue light being scattered (due to particles or lensing)

= History of Astronomy (and Science)
#definition(name: "Retrograde Motion")[The apparent motion from passing an observed planet. Characterized by an apparent vertical-S-like curve in a planet's trajectory]

#definition(name: "Stellar Parallax")[
  The parallax motion of the stars. The viewing of an object from two different perspectives causes a different position with respect to a background. 
]

The stellar parallax on Earth is small (1" or 1 arc second) and undetectable to the naked eye.

== Early Astronomy
All ancient peoples utilized astronomy (and at the very least recorded sky motions). For example, the moon was used in equatorial Africa to predict the rain

The primary goal was a source of season tracking and timekeeping. Astronomy was also a source of fixed patterns, in an otherwise chaotic world

Early astronomy was also the birth of careful and repeatable measurement of data, especially reproducibility. A key to science.

=== Timekeeping
This also led to the creation of many different conventions for timekeeping. The Gregorian calendar, Julian calendar, Lunar calendars, etc.

Following lunar cycles results in a drift (desync) between years and seasons, which has also led to different conventions for correction

See how similar observations have led to vastly different conclusions

=== Greek Astronomy
Greek astronomy remains prevalent (and remembered) because it survives with records. (Does not necessarily imply, they were more intellectual or the only ones) but also for the Greek's affinity for *scientific modeling*

#definition(name: "Scientific Model")[An abstraction of a system describing and predicting the behaviour of that system]

The whole of science can be regarded as the development, correction and testing of *models!*

Ancient Greece had many reasons to believe in a geocentric model, including an explanation on how we remain on the Earth, as well as sense of importance but most importantly because there was no observed stellar parallax

Although, many Greek philosophers also held the belief of heliocentric models due to their explanation of retrograde motion

=== Eastern Philosophy
During medieval and dark ages, scientific inquiry and practice moved to Eastern cultures (creating he Islamic Golden age)

Adopting Ancient Greek practices and texts, centered around Baghdad. Their legacy is kept in the names of many stars due to their astronomical star names.

== Copernican Revolution
Greek ideas with Islamic refinement were reintroduced into Europe, with the advent of more precise observations began to illustrate the idea that the speed of planets were not uniform (requiring many epicycles on a Ptolemaic model)

=== Nicholas Copernicus
The issues with the Ptolemaic model motivated Nicholas Copernicus proposed a new heliocentric model (but kept the epicyclic motion from the Ptolemaic model)

Despite this, not many more interesting insights could be provided by the model

=== Tycho Brahe
Tycho Brahe was detail-oriented and dedicated his life to tedious astronomical observations to improve ancient Greek data

Used naked eye observation to chart planetary motions to an unprecedented 1 arc minute accuracy. Also recorded a supernova in 1572.

=== Johannes Kepler
Worked under Tycho Brahe, used Brahe's data to attempt to develop a new model which described planetary motion

Replacing cyclic motion with elliptical motion allowed the model to fit the data much better.
#definition(name: "Ellipses")[
  The "major axis" is the longest size of an ellipse, the semimajor axis is half of this axis denoted $a$

  The distance from the center to the focus is denoted $c$

  The eccentricity is denoted $e = c/a$

  A circle is a special case of an ellipse with $e = 0$
]

== Kepler's Three Laws
+ Planets follow elliptical orbits with the Sun at one focus (and nothing at the other)
+ As planet moves around its orbit, it sweeps out equal areas in equal time (farther from the sun => faster)
+ More distant planets move around the sun more slowly following $P^2 = a^3$ (NOTE, P must be in years and $a$ must be i astronomical units)

"Peri-" => Close, "Ap-" => Faraway 

Near the sun means "perihelion" and similarly farthest away from the sun is "aphelion"

Nearest to the Earth means "perigee" and similarly farthest away from the Earth is "apogee"

$
r_"perihelion" = a(1-e)
$ 
$
r_"aphelion" = a(1+e)
$ 

Note that Kepler produces *Laws* rather than *theories* because the results were entirely based on observations and not models. (It is a conjectured form, not an underlying theorem)
The result of Kepler's laws caused the slow jettisoning of the Ptolemaic model

== Galileo
- Adapted the telescope for science
- Found sun spots, moons orbiting around Jupiter (disproved that bodies only orbited Earth)
- Observed phases of Venus (Proved the impossibility of a geocentric model, and recall that Venus is never seen far from the Sun (at midnight))

Other science like Foucault's pendulum and stellar aberration also demonstrated that the Earth was moving and rotating around the Sun

== The Nature of Science
The Copernican Revolution was a microcosm of the scientific process: The revision of a model to fit observational (empirical) data for more accurate and predictive model

Science is essentially the development of models and methods to refine ideas about our world
- Models should fit observations
- Models should make predictions
- Evidence should be repeatable
- Models are falsifiable

Pseudosciences like astrology are born from a common parent (Galileo, Ptolemy, Kepler were all astronomers AND astrologers)
- Given astronomy's strong predictive capabilities, astrology rose up to attempt to predict events/personalities
- Astrology also gave way to many symbols $sun$ $mercury$ $venus$ $earth$ etc.
However, astrology is not a science, because they are manifestly falsifiable
Tests of the validity of astrology have given negligible credence.

#definition(name: "Occam's Razor")[
  The idea that simpler theories are better. Taken as a "rule of thumb"/heuristic in science. Complexity can require more evidence
]

#definition(name: "Observation")[A datum or set of data that describe the world (under repeatable circumstances)]
#definition(name: "Law")[A reliable mathematical description for how the world works]
#definition(name: "Hypothesis")[A proposed theory without sufficient testing]
#definition(name: "Theory")[A falsifiable model that explains the behaviour of the observable world and has been subject to testing]

Science is constructed to be antagonistic, ideas will be criticized and tested to prove its worth

The scientific consensus, is a body of ideas for which _most_ scientists agree (ex. Newton's Law of Gravitation)

"Extraordinary claims require extraordinary evidence."

The methods of science include collecting data, data analysis and writing a *peer-reviewed* journal articles

In academia, we receive rewards for _high-impact_ frequent publication (publish or perish)

We should remember that the "pure scientific method" is a subset of how scientists actually practice science which is further a subset of how humanity uses science.
