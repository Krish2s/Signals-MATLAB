clc;clear all;close all;
tf=0.005
t=0:0.00005:tf
f1=input('Enter the freq f1:');
f2=input('Enter the freq f2:');
f3=input('Enter the freq f3:');
f=[f1 f2 f3]
m=max(f)
xt1=cos(2*pi*f1*t)
xt2=cos(2*pi*f2*t)
xt3=cos(2*pi*f3*t)
xt=xt1+xt2+xt3
fs=input('Enter the Sampling freq:')
Ts=1/fs
n=0:tf*fs
nTs=n*Ts
xn=cos(2*pi*f1*nTs)+cos(2*pi*f2*nTs)+cos(2*pi*f3*nTs)
xa=xn*sinc(fs*(ones(length(n),1)*t-nTs'*ones(1,length(t))))
subplot(311)
plot (t,xt)
subplot(312)
stem(nTs,xn)
subplot (313)
plot(t,xa)