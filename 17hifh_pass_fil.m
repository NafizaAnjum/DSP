clc;
clear;
close all;

%% Generate Original Signal

fs = 1000;                  % Sampling frequency (Hz)
t = 0:1/fs:1;               % Time vector

signal = sin(2*pi*50*t) + 2;   % 50 Hz sine wave with DC offset

%% Design FIR High-Pass Filter

filter_order = 40;
cutoff_frequency = 20;          % Cutoff frequency (Hz)

normalized_cutoff = cutoff_frequency/(fs/2);

b = fir1(filter_order, normalized_cutoff, 'high');

%% Apply Filter

filtered_signal = filter(b,1,signal);

%% Plot Results

figure;

subplot(2,1,1)
plot(t,signal)
grid on
title('Original Signal with DC Component')
xlabel('Time (s)')
ylabel('Amplitude')

subplot(2,1,2)
plot(t,filtered_signal)
grid on
title('Signal after High-Pass Filtering')
xlabel('Time (s)')
ylabel('Amplitude')