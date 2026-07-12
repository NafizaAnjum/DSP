clc;
clear;
close all;

% Original Signal
t = 0:0.001:1;
x = sin(4*pi*t);

% Bit Resolutions
bits = [2 4 8];

figure;

for i = 1:3

    b = bits(i);

    % Number of Quantization Levels
    L = 2^b - 1;

    % Quantization
    xq = round((x + 1)/2 * L) / L * 2 - 1;

    % Quantization Error
    e = xq - x;

    subplot(3,1,i)

    plot(t,x,'b','LineWidth',1.5)
    hold on
    stairs(t,xq,'r','LineWidth',1.5)
    plot(t,e,'k','LineWidth',1)

    grid on

    title(sprintf('%d-bit Quantization | MSE = %e', ...
          b, mean(e.^2)))

    xlabel('Time (s)')
    ylabel('Amplitude')

    legend('Original','Quantized','Error',...
           'Location','northeast')

end