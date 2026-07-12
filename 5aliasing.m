clc;
clear;
close all;

% Original Signal Frequency
f0 = 4;              % Hz

% Sampling Frequency
fs = 5;              % Hz (Below Nyquist)

% Aliased Frequency
f_alias = 1;         % Hz

% Continuous-Time Signal
t_cont = 0:0.001:1;
x_true = sin(2*pi*f0*t_cont);

% Sampled Signal
t_samp = 0:1/fs:1;
x_samp = sin(2*pi*f0*t_samp);

% Aliased Signal
x_alias = -sin(2*pi*f_alias*t_cont);

% Plotting
figure;
hold on;
grid on;

plot(t_cont,x_true,'b-','LineWidth',1.5);
plot(t_cont,x_alias,'r--','LineWidth',1.5);
plot(t_samp,x_samp,'ko','MarkerSize',8,'MarkerFaceColor','k');

title('Aliasing: 4 Hz Signal Sampled at 5 Hz');
xlabel('Time (seconds)');
ylabel('Amplitude');

legend('True Signal (4 Hz)', ...
       'Aliased Signal (1 Hz)', ...
       'Sample Points', ...
       'Location','southwest');

hold off;