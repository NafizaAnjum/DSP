clc;
clear;
close all;

%% Filter Specifications

fs = 1000;                  % Sampling frequency (Hz)
filter_order = 40;          % Filter order
cutoff_frequency = 100;     % Cutoff frequency (Hz)

%% Normalize Cutoff Frequency

normalized_cutoff = cutoff_frequency/(fs/2);

%% Design FIR Low-Pass Filter

b = fir1(filter_order, normalized_cutoff, 'low');

%% Plot Frequency Response

figure;
freqz(b,1,1024,fs);

title('Frequency Response of FIR Low-Pass Filter');