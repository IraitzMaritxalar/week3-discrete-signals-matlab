This script demonstrates how to generate and display several common discrete-time signals using MATLAB.
Each section creates one type of signal and plots it with a stem graph for clear visualization.

1. Main Variable
n = -10:10;


n is the discrete-time index ranging from –10 to +10.

All signals are defined over this index.

2. Signals
a) Unit Impulse Signal
impulse = (n == 0);
stem(n, impulse);


This signal equals 1 only at n = 0 and 0 everywhere else.

It is also called the delta function and is used as a basic building block in signal processing.

b) Unit Step Signal
unit_step = (n >= 0);
stem(n, unit_step);


This signal is 0 for n < 0 and 1 for n ≥ 0.

It represents a sudden change from zero to one at time zero.

c) Unit Ramp Signal
unit_ramp = n .* (n >= 0);
stem(n, unit_ramp);


This signal increases linearly with n for n ≥ 0 and remains 0 for n < 0.

It models a steadily increasing input.

d) Exponential Signal
exponential_signal = exp(0.1 * n);
stem(n, exponential_signal);


This signal follows an exponential curve.

Because the exponent is positive, it grows as n increases and shrinks as n decreases.

e) Signum Function
signum_function = sign(n);
stem(n, signum_function);


This function indicates the sign of n:

–1 for n < 0

0 at n = 0

+1 for n > 0

It’s useful for identifying positive and negative indices.

f) Sinc Function
sinc_function = sin(pi * n) ./ (pi * n);
sinc_function(n == 0) = 1;
stem(n, sinc_function);


This function is the discrete-time sinc function, important in digital signal processing.

At n = 0, the expression gives 0/0, so the code manually sets the value to 1, which is the correct limit.
