clc;close all;
%% Equation Building (Plotting without using axis command. Dynamic/soft code is made)
a=input('enter the amplitude: ');
f=input('enter th frequency: ');
c=input('enter the number of cycles: ');
phi=input('enter the phase in degree: ');
phi=(phi*pi)/180;
t=0:c/(f*100):c/f;
p=a*sin(2*pi*f*t+phi);

% %% Applying sampling theorem
% subplot(4,1,2);
% stem(t,p)
% xlabel('Time-->')
% ylabel('Amplitude-->')
% title('Sampled sine wave')
% grid on;

%% Sampling original method
fs=input('enter the sampling frequency: ');
n=0:(c*fs)/f;
s=a*sin(2*pi*f*(n/fs)+phi);

%% plotting equations
% Continous signal
ta=c/f;
subplot(2,1,1);
plot(t,p)
% text(0.16,1,'frequency of signal= \num2str(\f) hz')
str1='Frequency of signal = ';
str2=num2str(f);
str3=' hz';
strf=strcat(str1,str2,str3);
text((ta-2.5*(ta/10)),a-a/2,strf);
xlabel('Time-->')
ylabel('Amplitude-->')
title('Sine wave')
grid on;


% sampled signal
if (fs>=2*f)
    subplot(2,1,2);
    stem(n,s)
    na=c*fs/f;
    str1='Sampling Frequency of the signal = ';
    str2=num2str(fs);
    str3=' hz';
    strf=strcat(str1,str2,str3);
    text((na-2.5*(na/10)),a-a/2,strf);
    xlabel('No. of samples-->')
    ylabel('Amplitude-->')
    title('Sampled sine wave')
    grid on;
else
    error('The sampling frequency does not meat the required condition')
    
    
end    
    
    


% subplot(4,1,4)
% plot(n,s)