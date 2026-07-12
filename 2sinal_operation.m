clc;
clear;
close all;

% Original Signal
n = 0:3;
x = [1 2 3 4];

% Time Shift (Right Shift by 2)
n_shift = n + 2;

% Amplitude Scaling
x_scale = 2 * x;

% Time Reversal
n_rev = -fliplr(n);
x_rev = fliplr(x);

% Plotting
figure;

subplot(2,2,1)
stem(n,x,'filled')
grid on
title('Original Signal')
xlabel('n')
ylabel('Amplitude')

subplot(2,2,2)
stem(n_shift,x,'filled')
grid on
title('Time Shifted Signal')
xlabel('n')
ylabel('Amplitude')

subplot(2,2,3)
stem(n,x_scale,'filled')
grid on
title('Amplitude Scaled Signal')
xlabel('n')
ylabel('Amplitude')

subplot(2,2,4)
stem(n_rev,x_rev,'filled')
grid on
title('Time Reversed Signal')
xlabel('n')
ylabel('Amplitude')