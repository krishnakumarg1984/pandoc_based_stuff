---
title:    My Awesome Topic
subtitle: Ramblings on the Subject
author:   Alice
date:     September 2017
eqnos-cleveref: On
eqnos-plus-name: Eq.
---

## Introduction

- Something
- Another thing
- The last one

# I Can LaTeX
can i?
## A Program

``` javascript
function coolTools() {
    return ["pandoc", "beamer"];
}
```

\centerline{\Large{\textit{I can embed LaTeX as well.}}}
## Getting up

- Turn off alarm
- Get out of bed

## Breakfast

- Eat eggs
- Drink coffee

# In the evening

## Dinner

- Eat spaghetti
- Drink wine

------------------

![Picture of lens](pexels_photo.jpeg){#fig:lens}

## Going to sleep

- Get in bed
- Count lol
- hello


<!-- ---------- -->
<!-- ``` javascript -->
<!-- clear; close all; clc; -->
<!-- fprintf('Hello world\n'); -->
<!-- a = 10; -->
<!-- b = 20; -->
<!-- c = a + b; -->
<!-- d = a.*b; -->
<!-- x = linspace(0,10,100); -->
<!-- y = sin(x); -->
<!-- plot(x,y,'linewidth',3); -->
<!-- ``` -->

----------

The equation for a straight line is
$$ y = mx + b $$ {#eq:line}
and the equation for a  polynomial is
$$ y = \sum_{n=0}^{\infty} a_n x^n $$ {#eq:polynomial}

*@eq:line and @eq:polynomial are known to all first-year math students.

The Fourier series is a little more advanced:

$$ y = \frac{1}{2}a_0 + \sum_{n=1}^{\infty}a_n\cos(nx)
                      + \sum_{n=1}^{\infty}b_n\cos(nx)
$$ {#eq:fourier}

Equations {!@eq:line}--{!@eq:fourier} are used throughout science and engineering.

Equations can be left unnumbered if we do not need to refer to them:
$$ y = A e^{-\gamma t}\cos(2\pi f t) $$

# continue
It is also possible to number equations generically without planning to refer to them; e.g.:
$$ \pi = 3.141592653589793238462643\dots $$ {#eq:}

----------

## Table
| Name    | Size | Cost |
|---------+------+:-----|
| Afriend | 22   | 250  |
| Benemy  | 24   | 450  |
| Marco   | 180  | 243  |
Table: Caption. {#tbl:id}

Exercise #
Exercise #