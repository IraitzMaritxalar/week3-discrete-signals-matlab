Discrete Time Signals in MATLAB

This code shows how to create and plot different discrete time signals in MATLAB.
Each part makes one signal and shows it with a stem plot.

1. Variables

n = -10:10; → This creates a vector from -10 to 10. It is the time axis.

2. Signals
a) Unit Impulse Signal
impulse = (n == 0);
stem(n, impulse);


This signal is 1 at n = 0 and 0 for other n.

It is also called delta[n].

b) Unit Step Signal
unit_step = (n >= 0);
stem(n, unit_step);


This signal is 0 for n < 0 and 1 for n ≥ 0.

c) Unit Ramp Signal
unit_ramp = n .* (n >= 0);
stem(n, unit_ramp);


This signal is 0 for n < 0.

For n ≥ 0, it grows line by line like a ramp.

d) Exponential Signal
exponential_signal = exp(0.1 * n);
stem(n, exponential_signal);


This is an exponential curve that grows slowly.

e) Signum Function
signum_function = sign(n);
stem(n, signum_function);


This signal is -1 for n < 0, 0 for n = 0, and +1 for n > 0.

f) Sinc Function
sinc_function = sin(pi * n) ./ (pi * n);
sinc_function(n == 0) = 1;
stem(n, sinc_function);


This is the sinc function.
