clc;
clear;
close all;

% Original Signal
t = 0:0.001:1;
f = 5;
x = sin(2*pi*f*t);

% Uniform Quantization
L = 8;
delta = 2/(L-1);
x_quant = delta * round(x/delta);

% Quantization Error
error = x - x_quant;

% Mean Squared Error (MSE)
MSE = mean(error.^2);

% Display MSE
disp(['Mean Squared Error = ', num2str(MSE)])

% Plotting
figure;

subplot(3,1,1)
plot(t,x,'b','LineWidth',1.5)
grid on
title('Original Signal')
xlabel('Time (s)')
ylabel('Amplitude')

subplot(3,1,2)
stairs(t,x_quant,'r','LineWidth',1.5)
grid on
title('Quantized Signal')
xlabel('Time (s)')
ylabel('Amplitude')

subplot(3,1,3)
plot(t,error,'k','LineWidth',1.5)
grid on
title('Quantization Error')
xlabel('Time (s)')
ylabel('Error')