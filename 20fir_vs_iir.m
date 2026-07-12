clc;
clear;
close all;

%% Filter Specifications

fs = 1000;                 % Sampling frequency (Hz)
order = 30;                % Filter order
fc = 100;                  % Cutoff frequency (Hz)

Wn = fc/(fs/2);            % Normalized cutoff frequency

%% Design FIR Low-Pass Filter

b_fir = fir1(order, Wn, 'low');

%% Design IIR Butterworth Low-Pass Filter

[b_iir, a_iir] = butter(4, Wn, 'low');

%% Plot Frequency Responses

figure;

subplot(2,1,1)
freqz(b_fir,1,1024,fs)
title('FIR Low-Pass Filter')

subplot(2,1,2)
freqz(b_iir,a_iir,1024,fs)
title('IIR Butterworth Low-Pass Filter')