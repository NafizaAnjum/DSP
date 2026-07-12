clc;
clear;
close all;

% Original Signal
t = 0:0.001:1;
f = 5;
x = sin(2*pi*f*t);

% Number of Quantization Levels
L = 8;

% Quantization Step Size
delta = 2/(L-1);

% Uniform Quantization
x_quant = delta * round(x/delta);

% Plotting
figure;

subplot(2,1,1)
plot(t,x,'b','LineWidth',1.5)
grid on
title('Original Signal')
xlabel('Time (s)')
ylabel('Amplitude')

subplot(2,1,2)
stairs(t,x_quant,'r','LineWidth',1.5)
grid on
title('Quantized Signal')
xlabel('Time (s)')
ylabel('Amplitude')