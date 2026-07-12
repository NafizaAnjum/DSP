clc;
clear;
close all;

%% Original Signal

fs = 200;                      % Sampling frequency (Hz)
t = 0:1/fs:1;                  % Time vector

signal = sin(2*pi*120*t);      % 120 Hz sine wave

%% Plot Original Signal

figure;

subplot(3,1,1)
plot(t,signal)
grid on
title('Original Signal')
xlabel('Time (s)')
ylabel('Amplitude')

%% Design Anti-Aliasing FIR Low-Pass Filter

order = 40;
cutoff_frequency = 80;         % Cutoff frequency (Hz)

Wn = cutoff_frequency/(fs/2);

b = fir1(order,Wn,'low');

%% Apply Filter

filtered_signal = filter(b,1,signal);

%% Plot Filtered Signal

subplot(3,1,2)
plot(t,filtered_signal)
grid on
title('Filtered Signal')
xlabel('Time (s)')
ylabel('Amplitude')

%% Plot Frequency Response

subplot(3,1,3)
freqz(b,1,1024,fs)
title('Frequency Response')