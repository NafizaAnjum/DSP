clc;
clear;
close all;

%% Time Vector

fs = 1000;                  % Sampling frequency (Hz)
t = 0:1/fs:1;               % Time vector

%% Generate Signals

sine_signal = sin(2*pi*10*t);

square_signal = square(2*pi*10*t);

noise_signal = randn(size(t));

%% Calculate Features

signals = {sine_signal, square_signal, noise_signal};

names = {'Sine Wave','Square Wave','Random Noise'};

for i = 1:3

    x = signals{i};

    mean_value = mean(x);

    variance_value = var(x);

    std_value = std(x);

    fprintf('\n%s\n',names{i});

    fprintf('Mean      = %.4f\n',mean_value);

    fprintf('Variance  = %.4f\n',variance_value);

    fprintf('Std Dev   = %.4f\n',std_value);

end

%% Plot Signals

figure;

subplot(3,1,1)
plot(t,sine_signal)
grid on
title('Sine Wave')

subplot(3,1,2)
plot(t,square_signal)
grid on
title('Square Wave')

subplot(3,1,3)
plot(t,noise_signal)
grid on
title('Random Noise')