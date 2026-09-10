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
#let fode(dependent, independent) = $(dif dependent) / (dif independent )$
#let de(dependent, independent, order) = {
  return $(dif^order dependent) / (dif independent^order)$
}



= First-Order Ordinary Differential Equations

#definition(name: [Order of a Differential Equation])[
  The order of a differential is the highest order derivative that occurs in the equation.
]

- $fode(y, x) = -2 x y$ is a first order differential equation (because the highest occurring derivative is first-order)
- $m de(x, t, 2) = - k x - c (fode(x, t))^2$ is a second order order differential equation (because it includes the second derivative, not the first derivative squared)

#definition(name: [Linear vs Non-linear Differential Equations])[
  A differential equation is "linear" if the _dependent_ variable (and its derivatives) occur linearly. Otherwise it is said to be "non-linear"
  - $fode(y, x) = sin(y)$ is  a non-linear differential equation because $sin(y)$ is non-linear

  - $de(y, x, 2) = fode(y, x) + y$ is a linear differential equation
]

The most general $n^"th"$ order linear differential equation is of the form:
$
  a_n(x)#de($y$, $x$, $n$) + a_(n-1)(x) de(y, x, n) + ... + a_1(x) fode(y, x) + a_0(x) y(x) = F(x)
$
n
Verifying the solution to a differential equation is as simple as taking the derivative and substituting where necessary to show that the original differential equation is satisfied. Finding the solutions is non-trivial for most types of differential equation.

#definition(name: "Initial Value Problem")[
  An initial value problem is a differential equation problem with specific values of the function (and any derivatives) at an initial point, called the "initial condition"
]
- $fode(y, x) = y(x), y(0) = 1$ is an example of an initial value problem, outside the context of a physical application.
- Most physical applications must specify an initial condition otherwise you are said to find the "general solution"

#definition(name: "Boundary Value Problem")[
  A boundary value problem is a differential equation with a constraint on multiple values of the function (and any derivatives) for many points, called the "boundary conditions"
]
- For example, a partial differential equation could specify the constraint $f(x, 0) = 2$ i.e. fixing a specific value for all values of $x$

#definition(
  name: "Quasi-linear First Order Differential Equation",
)[A differential equation of the form $fode(y, x) = f(x,y)$, i.e where the highest-order derivative is linear]

*Note*: A higher order differential equation can be written as a system of lower order differential equations.
$
  p(x) de(y, x, 2) + q(x) fode(y, x) + r(x) y = f(x) <=> cases(
    fode(y, x) = w,
    p(x) fode(w, x) + q(x) w + r(x) y = f(x)
  )
$
Notice that $y(x)$ cannot be replaced in terms of $w$

== Existence and Uniqueness of Solutions
In general and especially for physical applications, the study of differential equations is concerned about the "existence" and "uniqueness" of solutions for an equation

Equations in general can have no solutions or trivial solutions (such as when $y(x) = 0$).

#definition(name: "Unique Solution")[
  A solution to a differential equation is "unique" if it is the only solution to said equation.
]
- $fode(y, x) = 3y^(2/3), y(0) = 0$ does not have a unique solution because $y(x) = x^3$ and $y(x) = 0$ are both solutions to the equation

There are a number of theorems we can use to guarantee the existence of solutions (and in some cases, at most *one* solution)
#theorem(name: "Picard-Lindelof")[
  If $f(x,y)$ is a continuous function of $x$ and $y$ on a *closed* rectangle $R$ with sides parallel to the axes and if $f(x,y)$ obeys the "Lipschitz condition" and $(x_0, y_0)$ is an interior point in $R$ then there is a $h >0$ such that
  $
    fode(y, x) = f(x, y), #h(1em) y(x_0) = y_0
  $
  has exactly *one* solution.
]<thm:picard-lindelof>

#definition(name: "Lipschitz Condition")[
  The Lipschitz condition is defined by the following:
  $
    |f(x, y_2) - (f_x, y_1)| <= L|y_2 - y_1| "for some" L, 0 <= L < oo
  $
]

#definition(name: "Picard")[
  If $f(x,y)$ is a continuous function of $x$ and $y$ on a *closed* rectangle $R$ with sides parallel to the axes and if $(delta f) / (delta y)$ is continuous and $(x_0, y_0)$ is an interior point in $R$ then there is a $h >0$ such that
  $
    fode(y, x) = f(x, y), #h(1em) y(x_0) = y_0
  $
  has exactly *one* solution.
]

A proof of the @thm:picard-lindelof can be achieved using the Banach Contraction Mapping Principal, for worked-through version of the proof, see the written notes.

However, the solution for _some_ differential equations can be approximated using the iterative technique of "Picard iterations", For a differential equation $fode(y, x) = f(y, x)$ begin with some initial function $y_0$ typically $y_0(x) = 0$ and define the next iteration to be,
$
  y_(n+1) = y_0 + integral_(x_0)^x f(s, y_(n)(s)) dif s
$

== Separable Differential Equations
#definition(name: "Separable Differential Equation")[
  A differential equation is called separable if it can be written in the form $fode(y, x) = g(x) h(y)$.
]

A separable differential equation can be solved trivially by isolating the dependent and independent variables are separate sides of the equation and performing two integrals.

#proof[
  Suppose $#fode($y$, $x$) = g(x) h(y)$ where $h(y_0) != 0$ and $H(y) eq.triple integral_(y_0)^y (dif y)/h(y)$

  Using a substitution of variables where $u = y(x) #h(5pt) (dif u)/(dif x) = y'(x)$ we can rewrite the integral
  $
    integral_(y_0)^y (dif y)/h(y) & = integral_(x_0)^x 1/h(y(x)) y'(x) dif x \
                                  & = integral_(x_0)^x 1/h(y(x)) g(x) h(y) dif x \
                                  & = integral_(x_0)^x g(x) dif x
  $
]

Note, solving separable differential equations often requires skills of integration including partial fraction decomposition, trigonometric substitution, substitution of variables, integration by parts, etc.

Here is a simplified overview of all of these techniques

=== Review of Integration Techniques
- Integration by Parts: $integral u dif v = u v - integral v dif v$
  - For most cases, identify a term (in a product) that may simplify when differentiated as $u$
- Trigonometric Substitution: Set $x = sin(theta)$, $x = tan(theta)$ or $x = sec(theta)$
  - For when the integrand includes a radical containing the sum or difference of two squares
- Trigonometric Integrals: A special case of a substitution of variables
  - For when the integrand contains powers of trigonometric functions
  - $
      integral sin^(m)(x)cos^(n)(x) dif x => cases("n is odd" arrow u = sin(x), "m is even" arrow u = cos(x), "n and m are even" arrow sin(2x) = 2sin(x)cos(x))
    $
  - $
      integral tan^(m)(x)sec^n(x) dif x => cases("n is even" arrow u = tan(x), "m is odd and n" >= 1 arrow u = sec(x), "otherwise, use other techniques")
    $
- A fraction of the form $N(x)/D(x)$ can be simplified using partial fraction decomposition.
  - If $deg(N(x)) > deg(D(x))$ divide and then simplify
  - Otherwise, split $D$ into different factors and divide the numerator into some known form
    - $D(x) = a x + b -> A / (a x + b)$
    - $D(x) = a x^2 + b x + c -> (A x + B) / (a x^2 + b x + c)$
    - $D(x) = (a x + b)^n -> A_1 / (a x + b)^n + ... + A_n / (a x+ b)$
- Knowing a number of common integrals is also important, this includes trigonometric, hyperbolic, inverse trigonometric, logarithmic, etc.

== Linear Differential Equations
