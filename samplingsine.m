clc; close all; clear all;
%% smapling sine
a= input('enter the amplitude: ');
f= input('enter the frequency: ');
c =input('enter the number of cycle: ');
phi= input('enetr the phase diff: ');
phi= phi*(pi)/180;
T=c/f;
t=0:T/100:T;
g=a*sin(2*pi*f*t+phi);

fs=input('enter the smapling freq: ');
N=fs*(c)/f;
n=0:N;
g1=a*sin(2*pi*f*(n)/fs+phi);
subplot(211)

plot(t,g)
x=c-0.1;
y=a+0.5;
text(x, y,'frequency=')
grid on
subplot(212)
stem(n,g1)
grid on
