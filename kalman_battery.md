---
title           : SoC Estimation through Kalman Filtering
subtitle        : Pitfalls (many) and Opportunities (any?)
author          : Krishnakumar Gopalakrishnan
affiliation     : Imperial College London
date            : 02 Nov 2017
eqnos-cleveref  : On
eqnos-plus-name : Eq.
---

## Kalman Filtering
* Internal/hidden 'state' of a dynamic system
* Uses sensor measurements + model
* De-facto standard in many engineering applications
    + GPS position/speed estimates
    + Motion capture
    + Even financial markets
    + A lot more ....too lazy to mention

## Mathematical Framework
![Background Framework](kf_background.pdf){#fig:background}