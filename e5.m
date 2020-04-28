%% without noise
clc;clear all; close all;
Fs = 1000;                    % Sampling frequency
T = 1/Fs;                     % Sample time
L = 1000;                     % Length of signal
t = (0:L-1)*T;                % Time vector
% Sum of a 50 Hz sinusoid and a 120 Hz sinusoid
x = 0.7*sin(2*pi*50*t) + sin(2*pi*120*t); 
%y = x + 2*randn(size(t));
subplot(211)% Sinusoids plus noise
plot(Fs*t(1:50),x(1:50))
title('Signal Corrupted with no Random Noise')
xlabel('time (milliseconds)')
ylabel('X(t)')
% NFFT = 2^nextpow2(L); % Next power of 2 from length of y
% Y = fft(y,NFFT)/L;
% f = Fs/2*linspace(0,1,NFFT/2+1);
% 
% % Plot single-sided amplitude spectrum.
% plot(f,2*abs(Y(1:NFFT/2+1))) 
Y=fft(x);
P2=abs(Y/L);
P1=P2(1:L/2+1);
P1(2:end-1)=2*P1(2:end-1);
f=Fs*(0:(L/2))/L;
subplot(212)
plot(f,P1)
title('Single-Sided Amplitude Spectrum of y(t)')
xlabel('Frequency (Hz)')
ylabel('|Y(f)|')
grid on;

%% with noise


figure
Fs = 1000;                    % Sampling frequency
T = 1/Fs;                     % Sample time
L = 1000;                     % Length of signal
t = (0:L-1)*T;                % Time vector
% Sum of a 50 Hz sinusoid and a 120 Hz sinusoid
x1 = 0.7*sin(2*pi*50*t) + sin(2*pi*120*t); 
y1 = x1 + 2*randn(size(t));

subplot(211)% Sinusoids plus noise
plot(Fs*t(1:50),y1(1:50))
title('Signal Corrupted with  Random Noise')
xlabel('time (milliseconds)')
ylabel('X(t)')
% NFFT = 2^nextpow2(L); % Next power of 2 from length of y
% Y = fft(y,NFFT)/L;
% f = Fs/2*linspace(0,1,NFFT/2+1);
% 
% % Plot single-sided amplitude spectrum.
% plot(f,2*abs(Y(1:NFFT/2+1))) 
Y1=fft(y1);
P21=abs(Y1/L);
P11=P21(1:L/2+1);
P11(2:end-1)=2*P11(2:end-1);
f1=Fs*(0:(L/2))/L;
subplot(212)
plot(f1,P11)
title('Single-Sided Amplitude Spectrum of y(t)')
xlabel('Frequency (Hz)')
ylabel('|Y(f)|')
grid on;

