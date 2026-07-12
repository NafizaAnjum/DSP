clc;
clear;
close all;

%% Generate Original Signal

fs = 1000;                  % Sampling frequency (Hz)
t = 0:1/fs:1;               % Time vector (1 second)

signal = sin(2*pi*50*t);    % 50 Hz sine wave

%% Add White Gaussian Noise

noise = 0.5*randn(size(signal));
noisy_signal = signal + noise;

%% Design FIR Low-Pass Filter

filter_order = 40;
cutoff_frequency = 100;     % Cutoff frequency in Hz

normalized_cutoff = cutoff_frequency/(fs/2);

b = fir1(filter_order, normalized_cutoff, 'low');

%% Apply Filter

filtered_signal = filter(b,1,noisy_signal);

%% Plot Results

figure;

subplot(3,1,1)
plot(t,signal)
grid on
title('Original Signal')
xlabel('Time (s)')
ylabel('Amplitude')

subplot(3,1,2)
plot(t,noisy_signal)
grid on
title('Noisy Signal')
xlabel('Time (s)')
ylabel('Amplitude')

subplot(3,1,3)
plot(t,filtered_signal)
grid on
title('Filtered Signal')
xlabel('Time (s)')
ylabel('Amplitude')