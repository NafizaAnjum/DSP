clc;
clear;
close all;

% Original Analog Signal
f = 5;                      % Signal frequency (Hz)
t = 0:0.001:1;              % Continuous time axis
x = sin(2*pi*f*t);

% Sampling Frequencies
Fs1 = 10;                   % Nyquist Rate
Fs2 = 20;                   % Above Nyquist
Fs3 = 6;                    % Below Nyquist

figure;

% Sampling at Nyquist Rate
t1 = 0:1/Fs1:1;
x1 = sin(2*pi*f*t1);

subplot(3,1,1)
plot(t,x,'b','LineWidth',1.5)
hold on
stem(t1,x1,'r','filled')
grid on
title('Sampling at Nyquist Rate')
xlabel('Time (s)')
ylabel('Amplitude')
legend('Original Signal','Sampled Signal')

% Sampling Above Nyquist
t2 = 0:1/Fs2:1;
x2 = sin(2*pi*f*t2);

subplot(3,1,2)
plot(t,x,'b','LineWidth',1.5)
hold on
stem(t2,x2,'r','filled')
grid on
title('Sampling Above Nyquist Rate')
xlabel('Time (s)')
ylabel('Amplitude')
legend('Original Signal','Sampled Signal')

% Sampling Below Nyquist
t3 = 0:1/Fs3:1;
x3 = sin(2*pi*f*t3);

subplot(3,1,3)
plot(t,x,'b','LineWidth',1.5)
hold on
stem(t3,x3,'r','filled')
grid on
title('Sampling Below Nyquist Rate')
xlabel('Time (s)')
ylabel('Amplitude')
legend('Original Signal','Sampled Signal')