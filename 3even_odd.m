clc;
clear;
close all;

% Original Signal
n = -3:3;
x = [2 1 3 4 3 1 2];

% Time-Reversed Signal
x_rev = fliplr(x);

% Even Component
x_even = (x + x_rev)/2;

% Odd Component
x_odd = (x - x_rev)/2;

% Verification
x_verify = x_even + x_odd;

% Plotting
figure;

subplot(4,1,1)
stem(n,x,'filled')
grid on
title('Original Signal')
xlabel('n')
ylabel('Amplitude')

subplot(4,1,2)
stem(n,x_even,'filled')
grid on
title('Even Component')
xlabel('n')
ylabel('Amplitude')

subplot(4,1,3)
stem(n,x_odd,'filled')
grid on
title('Odd Component')
xlabel('n')
ylabel('Amplitude')

subplot(4,1,4)
stem(n,x_verify,'filled')
grid on
title('Verification: x[n] = x_e[n] + x_o[n]')
xlabel('n')
ylabel('Amplitude')