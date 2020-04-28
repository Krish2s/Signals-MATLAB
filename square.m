%% square
clc; clear all; close all;
t=0:0.1:20;
L=300;
Fs=1000;
y=sin(t)+(sin(3*t)/3)+(sin(5*t)/5)+(sin(7*t)/7)+(sin(9*t)/9);
subplot(211)
plot(t(1:70),y(1:70))
title('square Signal with no Random Noise')
xlabel('time (milliseconds)')
ylabel('X(t)')


Y=fft(y);
P2=abs(Y/L);
P1=P2(1:L/2+1);
P1(2:end-1)=2*P1(2:end-1);
f=Fs*(0:(L/2))/L;
subplot(212)
plot(f,P1)
title('Single-Sided Amplitude Spectrum of y(t)')
xlabel('Frequency (Hz)')
ylabel('|Y(f)|')

%% with noise 
figure
t=0:0.1:20;
L=300;
Fs=1000;
y=sin(t)+(sin(3*t)/3)+(sin(5*t)/5)+(sin(7*t)/7)+(sin(9*t)/9);
x = y + 2*randn(size(t));
subplot(211)
plot(t(1:70),x(1:70))

title('square Signal with  Random Noise')
xlabel('time (milliseconds)')
ylabel('X(t)')


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
