clc;
clear;
close all;

% Input Signals
x = [1 2 3 4 5];
y = [2 3 4 5 6];

%% Auto-correlation
Rxx = xcorr(x);

%% Cross-correlation
Rxy = xcorr(x,y);

%% Covariance
C = cov(x,y);

%% Display Results
disp('Auto-correlation:')
disp(Rxx)

disp('Cross-correlation:')
disp(Rxy)

disp('Covariance Matrix:')
disp(C)

%% Plotting
figure;

subplot(3,1,1)
stem(Rxx,'filled')
grid on
title('Auto-correlation')
xlabel('Lag')
ylabel('Amplitude')

subplot(3,1,2)
stem(Rxy,'filled')
grid on
title('Cross-correlation')
xlabel('Lag')
ylabel('Amplitude')

subplot(3,1,3)
bar(C)
grid on
title('Covariance Matrix')
xlabel('Variables')
ylabel('Covariance')
legend('Column 1','Column 2')