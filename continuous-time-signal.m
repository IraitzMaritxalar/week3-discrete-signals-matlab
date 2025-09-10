%============================================================
% Continuous-Time Signals in MATLAB
%============================================================

% Definir rango de tiempo continuo
t = -10:0.01:10;   % De -10 a 10 con paso 0.01

%% 1. Unit Impulse δ(t)
% Se representa como una línea en t=0 (valor infinito en teoría)
impulse_t = zeros(size(t));        % Inicializar a cero
impulse_t(t==0) = 1;               % Marcar un pulso en t=0
figure;
stem(0,1,'r','filled');            % Mostrar como línea vertical
xlabel('t');
ylabel('Amplitude');
title('Unit Impulse \delta(t)');
grid on;

%% 2. Unit Step u(t)
% u(t) = 1 para t>=0, 0 en otro caso
u_t = (t >= 0);
figure;
plot(t, u_t, 'LineWidth',1.5);
xlabel('t');
ylabel('Amplitude');
title('Unit Step u(t)');
grid on;

%% 3. Unit Ramp r(t)
% r(t) = t para t>=0, 0 en otro caso
r_t = t .* (t >= 0);
figure;
plot(t, r_t, 'LineWidth',1.5);
xlabel('t');
ylabel('Amplitude');
title('Unit Ramp r(t)');
grid on;

%% 4. Exponential Signal
% x(t) = e^{-a t} u(t)
a = 0.5;                   % Factor de decaimiento
x_exp_t = exp(-a*t) .* (t >= 0);
figure;
plot(t, x_exp_t, 'LineWidth',1.5);
xlabel('t');
ylabel('Amplitude');
title('Exponential Signal e^{-a t}u(t)');
grid on;

%% 5. Signum Function sgn(t)
% sgn(t) = -1 si t<0, 0 si t=0, +1 si t>0
sgn_t = zeros(size(t));
sgn_t(t > 0) = 1;
sgn_t(t < 0) = -1;
figure;
plot(t, sgn_t, 'LineWidth',1.5);
xlabel('t');
ylabel('Amplitude');
title('Signum Function sgn(t)');
grid on;

%% 6. Sinc Function
% sinc(t) = sin(pi*t)/(pi*t), con sinc(0)=1
sinc_t = ones(size(t));    % Inicializar
for k = 1:length(t)
    if t(k) ~= 0
        sinc_t(k) = sin(pi*t(k)) / (pi*t(k));
    end
end
figure;
plot(t, sinc_t, 'LineWidth',1.5);
xlabel('t');
ylabel('Amplitude');
title('Sinc Function sin(\pi t)/(\pi t)');
grid on;
