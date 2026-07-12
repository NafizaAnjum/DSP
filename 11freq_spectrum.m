clc;
clear;
close all;

% Sampling Frequency
Fs = 1000;

% Time Vector
t = 0:1/Fs:1;

% Composite Signal
x = sin(2*pi*50*t) + 0.5*sin(2*pi*120*t);

% FFT
N = length(x);
X = fft(x);

% Magnitude Spectrum
mag = abs(X);

% Frequency Axis
f = (0:N-1)*(Fs/N);

% Plotting
figure;

subplot(2,1,1)
plot(t,x,'b')
grid on
title('Composite Signal')
xlabel('Time (s)')
ylabel('Amplitude')

subplot(2,1,2)
plot(f,mag,'r')
grid on
title('Magnitude Spectrum')
xlabel('Frequency (Hz)')
ylabel('|X(f)|')
xlim([0 200])