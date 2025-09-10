%============================================================
% Discrete-Time Signals in MATLAB
%============================================================

% Definir rango de n (índices discretos)
n = -10:10;   % Desde -10 hasta 10

%% 1. Unit Impulse (delta[n])
% delta[n] = 1 en n=0, 0 en otro caso
delta = (n == 0);  % Lógico: 1 en n=0, 0 resto
figure;
stem(n, delta, 'filled'); % Gráfico discreto
xlabel('n');
ylabel('Amplitude');
title('Unit Impulse \delta[n]');
grid on;

%% 2. Unit Step (u[n])
% u[n] = 1 para n >= 0, 0 en otro caso
u = (n >= 0);
figure;
stem(n, u, 'filled');
xlabel('n');
ylabel('Amplitude');
title('Unit Step u[n]');
grid on;

%% 3. Unit Ramp (r[n])
% r[n] = n para n >= 0, 0 en otro caso
r = n .* (n >= 0);
figure;
stem(n, r, 'filled');
xlabel('n');
ylabel('Amplitude');
title('Unit Ramp r[n]');
grid on;

%% 4. Exponential Signal
% x[n] = a^n para n>=0, 0 en otro caso
a = 0.8;                 % Factor de decaimiento
x_exp = (a .^ n) .* (n >= 0);
figure;
stem(n, x_exp, 'filled');
xlabel('n');
ylabel('Amplitude');
title('Exponential Signal (a^n u[n])');
grid on;

%% 5. Signum Function (sgn[n])
% sgn[n] = -1 si n<0, 0 si n=0, +1 si n>0
sgn = zeros(size(n));        % Inicializar
sgn(n > 0) = 1;
sgn(n < 0) = -1;
% n=0 queda 0
figure;
stem(n, sgn, 'filled');
xlabel('n');
ylabel('Amplitude');
title('Signum Function sgn[n]');
grid on;

%% 6. Sinc Function
% sinc[n] = sin(pi*n)/(pi*n), con sinc[0]=1
sinc_n = zeros(size(n));      % Inicializar
for k = 1:length(n)
    if n(k) == 0
        sinc_n(k) = 1;        % Límite cuando n->0
    else
        sinc_n(k) = sin(pi*n(k)) / (pi*n(k));
    end
end
figure;
stem(n, sinc_n, 'filled');
xlabel('n');
ylabel('Amplitude');
title('Sinc Function sin(\pi n)/(\pi n)');
grid on;
