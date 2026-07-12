clc;
clear;
close all;

%% Read Audio File

[speech, fs] = audioread('speech.wav');

%% Plot Original Speech Signal

figure;

subplot(3,1,1)
plot(speech)
grid on
title('Original Speech Signal')
xlabel('Samples')
ylabel('Amplitude')

%% STFT (Spectrogram)

subplot(3,1,2)
spectrogram(speech,256,200,256,fs,'yaxis')
title('Spectrogram of Original Speech')

%% Design FIR Low-Pass Filter

order = 40;
cutoff_frequency = 3000;      % Hz

Wn = cutoff_frequency/(fs/2);

b = fir1(order,Wn,'low');

%% Filter the Speech Signal

filtered_speech = filter(b,1,speech);

%% Plot Filtered Speech

subplot(3,1,3)
plot(filtered_speech)
grid on
title('Filtered Speech Signal')
xlabel('Samples')
ylabel('Amplitude')