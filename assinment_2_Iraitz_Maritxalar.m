n = -10:10; % Define the range of n
impulse = (n == 0); % Create the unit impulse signal
stem(n, impulse); % Plot the discrete time unit impulse signal
xlabel('n');
ylabel('Amplitude');
title('Discrete Time Unit Impulse Signal');
grid on;

unit_step = (n >= 0); % Create the unit step signal
figure; % Create a new figure for the unit step signal
stem(n, unit_step); % Plot the discrete time unit step signal
xlabel('n');
ylabel('Amplitude');
title('Discrete Time Unit Step Signal');
grid on;

unit_ramp = n .* (n >= 0); % Create the unit ramp signal
figure; % Create a new figure for the unit ramp signal
stem(n, unit_ramp); % Plot the discrete time unit ramp signal
xlabel('n');
ylabel('Amplitude');
title('Discrete Time Unit Ramp Signal');
grid on;

% Create the discrete time exponential signal
exponential_signal = exp(0.1 * n); % Define the exponential signal
figure; % Create a new figure for the exponential signal
stem(n, exponential_signal); % Plot the discrete time exponential signal
xlabel('n');
ylabel('Amplitude');
title('Discrete Time Exponential Signal');
grid on;

% Create the discrete time signum function
signum_function = sign(n); % Define the signum function
figure; % Create a new figure for the signum function
stem(n, signum_function); % Plot the discrete time signum function
xlabel('n');
ylabel('Amplitude');
title('Discrete Time Signum Function');
grid on;

% Create the discrete time sinc function
sinc_function = sin(pi * n) ./ (pi * n); % Define the sinc function
sinc_function(n == 0) = 1; % Handle the indeterminate form at n = 0
figure; % Create a new figure for the sinc function
stem(n, sinc_function); % Plot the discrete time sinc function
xlabel('n');
ylabel('Amplitude');
title('Discrete Time Sinc Function');
grid on;