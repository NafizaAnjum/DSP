clc;
clear;
close all;

% Original Signal
t = 0:0.001:1;
f = 5;
x = sin(2*pi*f*t);

% Sampling
Fs = 20;
t_sample = 0:1/Fs:1;
x_sample = sin(2*pi*f*t_sample);

% Reconstruction using interp1
x_recon = interp1(t_sample, x_sample, t, 'spline');

% Plotting
figure;

subplot(2,1,1)
plot(t, x, 'b', 'LineWidth',1.5)
hold on
stem(t_sample, x_sample, 'r','filled')
grid on
title('Original Signal and Sampled Signal')
xlabel('Time (s)')
ylabel('Amplitude')
legend('Original','Samples')

subplot(2,1,2)
plot(t, x, 'b', 'LineWidth',1.5)
hold on
plot(t, x_recon, 'r--', 'LineWidth',1.5)
grid on
title('Original vs Reconstructed Signal')
xlabel('Time (s)')
ylabel('Amplitude')
legend('Original','Reconstructed')