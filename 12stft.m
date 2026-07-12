clc;
clear;
close all;

% Sampling Frequency
fs = 1000;

% Time Vector
t = 0:1/fs:2;

% Stationary Signal
x_stat = sin(2*pi*100*t) + sin(2*pi*300*t);

% Non-Stationary Signal (Chirp)
x_nonstat = sin(2*pi*100*t.^2);

% Plot STFT
figure('Name','STFT Spectrogram Analysis',...
       'Position',[100,100,800,400]);

subplot(1,2,1)
spectrogram(x_stat,256,128,256,fs,'yaxis')
title('Stationary Signal')

subplot(1,2,2)
spectrogram(x_nonstat,256,128,256,fs,'yaxis')
title('Non-Stationary Signal (Chirp)')