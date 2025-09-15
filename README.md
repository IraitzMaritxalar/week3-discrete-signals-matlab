Continuous-Time and Discrete-Time Signals in MATLAB

This repository contains two main MATLAB scripts to visualize and understand classic signals in continuous time and discrete time.

File 1: continuous_signals.m

File 2: discrete_signals.m

Each script generates plots of fundamental signals used in system analysis and signal processing.

1. continuous_signals.m

This script works with continuous time (variable t) ranging from -10 to 10 with a small step size (0.01) to simulate continuity. It includes:

Unit Impulse δ(t): Represented as a pulse at t=0.

Unit Step u(t): 0 for t<0 and 1 for t≥0.

Unit Ramp r(t): Linearly increases from 0 for t≥0.

Exponential Signal e^{-a t}u(t): Exponentially decaying signal for t≥0.

Signum Function sgn(t): -1 for t<0, 0 at t=0, and +1 for t>0.

Sinc Function sin(πt)/(πt): With limit value 1 at t=0.

This file mainly uses plot() for visualization, which is suitable for continuous-time signals.

2. discrete_signals.m

This script works with discrete time (variable n) ranging from -10 to 10. It includes the same types of signals but defined over discrete indices:

Unit Impulse δ[n]: 1 at n=0 and 0 elsewhere.

Unit Step u[n]: 0 for n<0 and 1 for n≥0.

Unit Ramp r[n]: Increases linearly from 0 for n≥0 (only at integer steps).

Exponential Signal (a^n)u[n]: Discrete exponential that decays based on base a for n≥0.

Signum Function sgn[n]: -1 for n<0, 0 at n=0, and +1 for n>0.

Sinc Function sin(πn)/(πn): With limit value 1 at n=0.

This file uses stem() for plotting, which is the standard way to represent discrete-time signals.

3. Key Differences Between the Two Scripts

Domain:

continuous_signals.m uses continuous time (t with small steps).

discrete_signals.m uses discrete time (n as integers).

Graphical Representation:

Continuous signals use plot() for smooth lines.

Discrete signals use stem() for individual points.

Signal Nature:

Continuous signals emulate mathematical continuity.

Discrete signals represent sampled data at specific points.

Exponentials:

Continuous: exp(-a*t) smoothly decays.

Discrete: (a.^n) decays step by step.

Sinc and Signum:

Same concept but adapted to each domain.
