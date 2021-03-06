Fs = 1000;                    % Sampling frequency
T = 1/Fs;                     % Sample time
L = 1500;                     % Length of signal
t = (0:L-1)*T;                % Time vector
% Sum of a 50 Hz sinusoid and a 120 Hz sinusoid
s = 0.7*sin(2*pi*50*t) + sin(3*pi*100*t)+sin(5*pi*120*t)/5; 
X = s  %randn(size(t));     % Sinusoids plus noise
subplot(211)
plot(1000*t(1:50),X(1:50))
title('Signal Corrupted with Zero-Mean Random Noise')
xlabel('time (milliseconds)')
ylabel('X(t)');
Y=fft(X);
p2= abs(Y/L);             %here if L is removed we still get the results but to restrict the amplitude we have taken L
p1= p2(1:L/2+1);
p1(2:end-1)= 2*p1(2:end-1);
f= Fs*(0:(L/2))/L;
subplot(212)
plot(f,p1)
title('single-sided amplitude spectrum of X(t)')
xlabel('f(Hz)')
ylabel('p1(f)')




%%%%%%%%%%%%%%%  WITH NOISE  %%%%%%%%%%%




Fs = 1000;                    % Sampling frequency
T = 1/Fs;                     % Sample time
L = 1500;                     % Length of signal
t = (0:L-1)*T;                % Time vector
% Sum of a 50 Hz sinusoid and a 120 Hz sinusoid
s = 0.7*sin(2*pi*50*t) + sin(3*pi*100*t)+sin(5*pi*120*t)/5; 
X = s + randn(size(t));     % Sinusoids plus noise
figure
subplot(211)
plot(1000*t(1:50),X(1:50))
title('Signal Corrupted with Zero-Mean Random Noise')
xlabel('time (milliseconds)')
ylabel('X(t)');
Y=fft(X);
p2= abs(Y/L);             %here if L is removed we still get the results but to restrict the amplitude we have taken L
p1= p2(1:L/2+1);
p1(2:end-1)= 2*p1(2:end-1);
f= Fs*(0:(L/2))/L;
subplot(212)
plot(f,p1)
title('single-sided amplitude spectrum of X(t)')
xlabel('f(Hz)')
ylabel('p1(f)')