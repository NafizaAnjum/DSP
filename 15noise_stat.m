clc;
clear;
close all;

%% Generate White Gaussian Noise

N = 10000;              % Number of samples
mean_val = 0;           % Mean of the noise
std_val = 1;            % Standard deviation of the noise

noise = mean_val + std_val * randn(1,N);

%% Calculate Statistical Properties (Built-in Functions)

mean_builtin = mean(noise);
variance_builtin = var(noise);
std_builtin = std(noise);
skewness_builtin = skewness(noise);
kurtosis_builtin = kurtosis(noise);

%% Calculate Statistical Properties (Manual)

mean_manual = sum(noise)/N;

variance_manual = sum((noise-mean_manual).^2)/(N-1);

std_manual = sqrt(variance_manual);

skewness_manual = sum((noise-mean_manual).^3)/((N-1)*(std_manual^3));

kurtosis_manual = sum((noise-mean_manual).^4)/((N-1)*(std_manual^4));

%% Display Results

fprintf('------------ Built-in Functions ------------\n');
fprintf('Mean                 = %.4f\n',mean_builtin);
fprintf('Variance             = %.4f\n',variance_builtin);
fprintf('Standard Deviation   = %.4f\n',std_builtin);
fprintf('Skewness             = %.4f\n',skewness_builtin);
fprintf('Kurtosis             = %.4f\n\n',kurtosis_builtin);

fprintf('------------ Manual Calculation ------------\n');
fprintf('Mean                 = %.4f\n',mean_manual);
fprintf('Variance             = %.4f\n',variance_manual);
fprintf('Standard Deviation   = %.4f\n',std_manual);
fprintf('Skewness             = %.4f\n',skewness_manual);
fprintf('Kurtosis             = %.4f\n',kurtosis_manual);

%% Plot the Signal

figure;

subplot(2,1,1)
plot(noise)
grid on
title('White Gaussian Noise')
xlabel('Sample Number')
ylabel('Amplitude')

subplot(2,1,2)
histogram(noise,50)
grid on
title('Histogram of White Gaussian Noise')
xlabel('Amplitude')
ylabel('Frequency')