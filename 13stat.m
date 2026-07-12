clc;
clear;
close all;

% Input Signal
x = [2 4 6 8 10 12 14 16];

N = length(x);

%% MATLAB Built-in Functions
mean_builtin = mean(x);
var_builtin = var(x);
std_builtin = std(x);
skew_builtin = skewness(x);
kurt_builtin = kurtosis(x);

%% Manual Calculations

% Mean
mean_manual = sum(x)/N;

% Variance
var_manual = sum((x-mean_manual).^2)/(N-1);

% Standard Deviation
std_manual = sqrt(var_manual);

% Skewness
skew_manual = sum((x-mean_manual).^3)/(N*std_manual^3);

% Kurtosis
kurt_manual = sum((x-mean_manual).^4)/(N*std_manual^4);

%% Display Results

disp('MATLAB Built-in Results')
disp(['Mean = ', num2str(mean_builtin)])
disp(['Variance = ', num2str(var_builtin)])
disp(['Standard Deviation = ', num2str(std_builtin)])
disp(['Skewness = ', num2str(skew_builtin)])
disp(['Kurtosis = ', num2str(kurt_builtin)])

disp(' ')

disp('Manual Results')
disp(['Mean = ', num2str(mean_manual)])
disp(['Variance = ', num2str(var_manual)])
disp(['Standard Deviation = ', num2str(std_manual)])
disp(['Skewness = ', num2str(skew_manual)])
disp(['Kurtosis = ', num2str(kurt_manual)])

%% Plot

figure;

subplot(2,1,1)
stem(x,'filled')
grid on
title('Input Signal')
xlabel('Sample Number')
ylabel('Amplitude')

subplot(2,1,2)
bar([mean_manual var_manual std_manual skew_manual kurt_manual])
grid on
title('Statistical Measures')
xticklabels({'Mean','Variance','Std Dev','Skewness','Kurtosis'})
ylabel('Value')