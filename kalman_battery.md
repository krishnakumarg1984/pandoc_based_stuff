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

# Mathematical Background
![Background Framework](kf_background.pdf){#fig:background}

# Observability (the spoilsport)
![Observability Demo](circuit1_observability.png){#fig:observability}

# Process and Sensor Noise
![Process and Sensor Noise](noise_illustration.png){#fig:noise}

# Forward vs Inverse Problems

## Forward Problem -- Simulation
![The forward problem](fwd.pdf){#fig:fwd}

## Inverse Problem -- Estimation
![The inverse problem](inv.pdf){#fig:inv}

# Mathematical Background + Domain Knowledge
![Domain Knowledge](kf_background_battery.pdf){#fig:background_battery}

# Application to Non-Linear Systems
The discrete-time state-evolution of a continuous-time generic non-linear system can be represented by the semi-explicit system of DAEs
\begin{align}
    x_{k+1} &= x_k + \int_{(k)\Delta t}^{(k+1)\Delta t}f\left(x(t),z(t)\right)dt + w_{k+1} + u_k\\
    g\left(x(t),z(t)\right) &= 0  \quad, (k)\Delta t \le t \le (k+1)\Delta t\\
    y_{k+1} &= h\left(y(t),z(t)\right) + v_{k+1}
\end{align}
$x$ represents differential states, $z$ represents algebraic states, $f$ is the state equation, $g$ represents the set of algebraic constraints, $h$ represents the output function, $u$ represents the process noise with co-variance matrix $Q$ and $v$ represents sensor noise with co-variance matrix $R$ respectively.

# Multi-pronged approach (100s of papers)
* Kalman Filter Family
    - Extended Kalman Filter
    - Sigma Point Kalman Filter
    - Unscented Kalman Filter
    - Ensemble Kalman Filter
* Moving Horizon Estimator
* Leuenberger Observer
* Sliding Mode Observer
* Particle Filter
* PDE Backstepping Observer
* Feedback Particle Filter