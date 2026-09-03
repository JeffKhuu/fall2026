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

= Binary Representation
As has been seen before, numbers in a computer are represented as a *binary digit* (base 2). In RISC-V a doubleword is *64 bits* (8 bytes), we number the bits 0, 1, 2, 3, ... from *right to left* in a doubleword (making the least significant bit the rightmost bit)

A doubleword can represent $2^64$ combinations of 64-bit patterns and thus can represent the numbers from 0 to $2^64-1$. Hardware is designed to add, subtract, multiply and divide these binary bit patterns, however if the number cannot be represented ("overflow" occurs) then it is the responsibility of the programming language and operating system to determine what is returned.

Naively, we can represent positive and negative numbers using a "sign bit" however this leads to several shortcomings
- it is unclear where to put the sign bit (is it the most significant?, least significant?)
- adders require an extra step to set the sign bit
- a wasted combination in the representation of (+0, -0) 
Instead, the alternative was to use the "two's complement" representation where in general leading 0's means positive and leading 1's mean negative.

In "two's complement" $2_10$ is represented as `00000000 00000000 00000000 00000000 00000000 00000000 00000010` and $-2_10$ is represented as `11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111110`

While "two's complement" is unable to represent one less possible positive number than negative number (i.e $2^63$ since $-1_10$ is represented as the string of all 1's) it has far more advantages than the sign bit approach
- All negative numbers have a 1 in the most significant bit (left-most bit) so negativity checks only require looking at a single bit

A useful shortcut when using "two's complement" to negate a given number is to follow the formula $overline(x) + 1 = -x$ where $overline(x)$ means to flip all bits in $x$ (this naturally comes from the fact that $overline(x) + x = -1$)

Another useful shortcut to convert from an $n$-bit representation to a representation with more than $n$ bits is to fill the new more significant bits with the sign bit of the previous $n$-bit representation. For example,
`00000000 00000010` = $2_10$ = `000000000 00000000 00000000 00000000 00000000 00000000 0000000 00000010` 

*Note:* Two's complement gets it names from the fact that the negation/compliment of a number x is represented as $2^n -x$. Similarly a "one's complement" can be thought as just the inversion of every bit in a pattern and is represented as $2^n - x - 1$ (like converting to two's complement without the final +1 step).

A final possible notation is to use "biased notation" in which the most negative value is represented as `0000 ... 0000` and the most positive value as `1111 .... 1111` with $0_10$ being represented as `10 ... 00`. The name comes from the fact that the notation can establish an arbitrary bias so the number such that the number plus the bias has a non-negative representation
