#import "@preview/mousse-notes:2.0.0": *

#set document(title: [CMPUT 229], author: "Jeff Khuu")

// US Letter size folded in half.
// Readable on screens, and readable as a folded booklet.
// #set page(height: 215.9mm, width: 279.4mm / 2)

// Alternatively, use us-letter.
#set page(paper: "us-letter")

// This must be the last show or set rule
// (because of the `_box-blocks` rule).
#show: style

#title-page(
  subtitle: upper[Computer Organization and Architecture I],
  primary: upper[
    Lectures delivered by \
    _Rob Hackman_\
  ],
  secondary: upper[University of Alberta \ Fall 2026],
)

Introduction and Course Outline
- Different structure from previous years (past: 5 or 6 labs, labs are still take home labs but w/o marks, there are now lab exams, the previous online quizzes are now available w/o marks)
- Some lab sessions will be mandatory to attend to complete the lab exam (completed within one hour) 
- Code is written in RISC-V Assembly
- The course covers hardware/architecture, math calculation and programming in Assembly
- The midterm now only covers concepts/theory w/o a coding portion
- Hardware and the interaction with it (how computers actually work)
- What is the hardware we interact with?
- High-level chip design, performance characteristics of computers and evaluating performance (at a high level)
- Assembly programming
- Assembly programming is tedious! (but not hard)
- Canvas contains all the set of slides, course discord, former lecture videos (there as a resource but slightly outdated, available for a second perspective)
- The course follows the textbook, use it alongside the lectures

= Computer Abstractions and Technology 
Reading includes Section 1.1 - 1.5

#theorem(name: "Moore's Law")[
  The complexity for minimum component costs has increased at a rate of roughly a factor of two per year
]
Moore's Law does not typically hold up in modern times due to physical constraints. Nonetheless computers are still pervasive in modern times

There are a variety of *types* of computers
- Desktop computers (made for general purpose)
- Server computers (network-based, high capacity, performance and reliable)
- Embedded computers (hidden as components of systems, constrained by performance/costs/power)

== Below the Program
Application software is written in a high level-language (Java, C++)
Below that, is the system software, a compiler that translates HLL code to machine code (as well as the operating system)
Below that, is the hardware (I/O, processors, etc.)

All kinds of computers contain similar components, input which travels over memory on a "datapath" to the processor and returned as output
- Hard drive
- Processor
- Memory
- Motherboard

#definition(name: "Datapath")[Performs operations on data]
#definition(name: "Control")[Sequences datapath, memory, etc.]
#definition(name: "Cache memory")[On-board memory, small fast SRAM for immediate access to data]

== The Big Picture
- Abstractions helps us deal with this supposed complexity in a computer
- Learning the lower level concepts make us better computer scientists however
- Instruction set architecture (ISA) is prescribed by the hardware
- Application binary interface is the ISA + System Software Interface (operating system)

== Manufacturing Integrated Circuits (ICs)
Integrated Circuits are manufactured using silicon ingots (silicon is used because it is a semi-conductor), ingots are cut into blank wafers and processed into a patterned wafer. These patterned wafers are tested and then cut into "dies" (similar to a chip)
