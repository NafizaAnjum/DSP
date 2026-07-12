clc;
clear;
close all;

% Time Axis
n = -10:10;

% Unit Step Signal
u = (n >= 0);

% Unit Impulse Signal
d = (n == 0);

% Ramp Signal
r = n .* (n >= 0);

% Sine Wave
f = 0.1;
x_sin = sin(2*pi*f*n);

% Cosine Wave
x_cos = cos(2*pi*f*n);

% Plotting
figure;

subplot(5,1,1)
stem(n,u,'filled')
grid on
title('Unit Step Signal')
xlabel('n')
ylabel('Amplitude')

subplot(5,1,2)
stem(n,d,'filled')
grid on
title('Unit Impulse Signal')
xlabel('n')
ylabel('Amplitude')

subplot(5,1,3)
stem(n,r,'filled')
grid on
title('Ramp Signal')
xlabel('n')
ylabel('Amplitude')

subplot(5,1,4)
stem(n,x_sin,'filled')
grid on
title('Sine Wave')
xlabel('n')
ylabel('Amplitude')

subplot(5,1,5)
stem(n,x_cos,'filled')
grid on
title('Cosine Wave')
xlabel('n')
ylabel('Amplitude')