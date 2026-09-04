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

In the base 2, positional numbering system each position represents an increasing power of two 

The powers of two up to $2^10$ should be memorized and it is expected to know how to convert between decimal and binary number systems.

- You can repeated division (and remainders) of two to find the binary representation of a decimal number
- Alternatively, you can convert using the largest possible power of two

The "complement" of $x$ where $x$ is a binary number is the flip of each bit in $x$ denoted as $overline(x)$

$
x = 1001_2 => overline(x) = 0110_2
$

In a $n$-bit fix width integer, you can imagine the left-most bit to represent the negative of the largest possible power (and the rest as positive powers of two) and use that idea to sum recover the decimal representation

Naively, we can represent positive and negative numbers using a "sign bit" however this leads to several shortcomings
- it is unclear where to put the sign bit (is it the most significant?, least significant?)
- adders require an extra step to set the sign bit
- a wasted combination in the representation of (+0, -0) 
Instead, the alternative was to use the "two's complement" representation where in general leading 0's means positive and leading 1's mean negative.

In "two's complement" $2_10$ is represented as `00000000 00000000 00000000 00000000 00000000 00000000 00000010` and $-2_10$ is represented as `11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111110`

While "two's complement" is unable to represent one less possible positive number than negative number (i.e $2^63$ since $-1_10$ is represented as the string of all 1's) it has far more advantages than the sign bit approach
- All negative numbers have a 1 in the most significant bit (left-most bit) so negativity checks only require looking at a single bit

A useful shortcut when using "two's complement" to negate a given number is to follow the formula $overline(x) + 1 = -x$ where $overline(x)$ means to flip all bits in $x$ (this naturally comes from the fact that $overline(x) + x = -1$)

Another useful shortcut to convert from an $n$-bit representation to a representation with more than $n$ bits is to fill the new more significant bits with the sign bit of the previous $n$-bit representation. This is called "sign extension" For example,
`00000000 00000010` = $2_10$ = `000000000 00000000 00000000 00000000 00000000 00000000 0000000 00000010` 

*Note:* Two's complement gets it names from the fact that the negation/compliment of a number x is represented as $2^n -x$. Similarly a "one's complement" can be thought as just the inversion of every bit in a pattern and is represented as $2^n - x - 1$ (like converting to two's complement without the final +1 step).

In an $n$-bit signed number the maximum positive number is $2^(n-1) -1$, the minimum negative number is $-2^(n-1)$

A final possible notation is to use "biased notation" in which the most negative value is represented as `0000 ... 0000` and the most positive value as `1111 .... 1111` with $0_10$ being represented as `10 ... 00`. The name comes from the fact that the notation can establish an arbitrary bias so the number such that the number plus the bias has a non-negative representation

In RISC-V a word has 32 bits, sometimes a 12-bit or a 20-bit "immediate value" needs to be stored

A register is able to store a single word (data needs to be loaded from the memory onto the register in order to be processed)

`t0 <- t0 + 15`
The register `t0` is 32 bits but the immediate constant `15` is 12 bits (which is sign-extended to 32 bits in order to be added)

= Hexadecimal Notation and Storing Data in Memory
Within four bits we store the base-10 numbers 0-15, base 16 can represent these numbers with a single character. (0, 1, 2, 3, 4, 5, 6, 7, 8, 9, a, b, c, d, e, f)

Example `ECA8 6420` $arrow$ `1110 1100 1010 1000 0110 0100 0010 0000`

$+19_10 arrow$ 0000 0000 0000 0000 0000 0000 0001 0011 $arrow$ 0x00000013

To store 32-bit numbers in memory we group bits into 8-bit groups called bytes (therefore 32-bit numbers are 4 bytes)

The least significant byte (is the lowest order byte, with the "least" value) similarly the most significant byte is the highest order byte

The index of each byte is called its "address", whether we store the bytes in big-endian or little-endian order is not standardized (in general)

Some places in memory do not have an address, they have a name. A register in a processor does *not* have an address, they have names. Ex. "s0" "s1" "t1" "t2" (they have numbers associated but they are NOT indexable)

In RISC-V an integer is represented by 4 bytes (u32 or i32), a memory address references a single byte in little-endian order.
```
0x10001017 0x00
0x10001016 0x00
0x10001015 0x00
0x10001014 0x0B
```
In a little-endian system the word would be `0x0000000B`, a big-endian system the word would be `0x0B000000`
