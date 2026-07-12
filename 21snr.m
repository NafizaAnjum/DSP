clc;
clear;
close all;

%% Generate Original Signal

fs = 1000;                     % Sampling frequency (Hz)
t = 0:1/fs:1;                  % Time vector

signal = sin(2*pi*50*t);       % 50 Hz sine wave

%% Add White Gaussian Noise

noise = 0.5*randn(size(signal));

noisy_signal = signal + noise;

%% Design FIR Low-Pass Filter

order = 40;

cutoff_frequency = 100;

Wn = cutoff_frequency/(fs/2);

b = fir1(order,Wn,'low');

%% Apply Filter

filtered_signal = filter(b,1,noisy_signal);

%% Calculate SNR

noise_before = noisy_signal - signal;

noise_after = filtered_signal - signal;

snr_before = 10*log10(sum(signal.^2)/sum(noise_before.^2));

snr_after = 10*log10(sum(signal.^2)/sum(noise_after.^2));

%% Display Results

fprintf('SNR Before Filtering = %.2f dB\n',snr_before);
fprintf('SNR After Filtering  = %.2f dB\n',snr_after);

%% Plot Signals

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