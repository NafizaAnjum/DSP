clc;
clear;
close all;

% Number of Samples
N = 8;

% Sample Index
n = 0:N-1;

% Input Signal
x = sin(2*pi*2*n/N);

% Built-in FFT
X_fft = fft(x);

% Manual DFT
X_manual = zeros(1,N);

for k = 0:N-1
    for m = 0:N-1
        X_manual(k+1) = X_manual(k+1) + ...
            x(m+1)*exp(-1j*2*pi*k*m/N);
    end
end

% Display Results
disp('Built-in FFT')
disp(X_fft)

disp('Manual DFT')
disp(X_manual)

% Plotting
figure;

subplot(3,1,1)
stem(n,x,'filled')
grid on
title('Input Signal')
xlabel('Sample Index (n)')
ylabel('Amplitude')

subplot(3,1,2)
stem(0:N-1,abs(X_fft),'filled')
grid on
title('Built-in FFT Magnitude')
xlabel('Frequency Index (k)')
ylabel('|X(k)|')

subplot(3,1,3)
stem(0:N-1,abs(X_manual),'filled')
grid on
title('Manual DFT Magnitude')
xlabel('Frequency Index (k)')
ylabel('|X(k)|')