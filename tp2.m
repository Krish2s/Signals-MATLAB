clc;clear all;close all;
t=-7:0.01:7;
l=length(t);

%% -----------------------------------------------------------------------------------------------------
% Equations
%%-------------------------------------------------------------------------------------------------------

%% x1(t)

for i=1:l
    if t(i)<-3
        x1(i)=0;
    elseif t(i)<-1
        x1(i)=1;
    elseif t(i)<0
        x1(i)=2;
    elseif t(i)<2
        x1(i)=2-t(i);
    elseif t(i)>2 
        x1(i)=0;
    end
end

%% x2(t)
for i=1:l
    if t(i)<-2
        x2(i)=0;
    else t(i)>-2
        x2(i)=1;
    end
end   

%% X1(t)+X2(t)

% for i=1:l
%     xa(i)=x1(i)+x2(i);                              
% end    
xa=x1+x2;

%% X1(t)-X2(t)

xs=x1-x2;


%% X1(t)*1.5

for i=1:l
    xm(i)=x1(i)*(3/2);
end

%% X1(t)/2

for i=1:l
    xd(i)=x1(i)/2;
end    

%% x1(t-2)

s=4;

for i=1:l
%     if t(i)<(-5+s)
%         x3(i)=0;
    if t(i)<(-3+s)
        x3(i)=0;
    elseif t(i)<(-1+s)
        x3(i)=1;
    elseif t(i)<(0+s)
        x3(i)=2;
    elseif t(i)<(2+s)
        x3(i)=2-t(i)+s;
    elseif t(i)>(2+s) 
        x3(i)=0;
%     elseif t(i)<(7+s)
%         x3(i)=0;
    end
end

%% x1(2t-1)
% d=2
% s=1;
    
% for i=1:l
%     if t(i)<(-3+s)
%         x4(i)=d *0;
%     elseif t(i)<(-1+s)
%         x4(i)=d*1;
%     elseif t(i)<(0+s)
%         x4(i)=2*d;
%     elseif t(i)<(2+s)
%         x4(i)=(2-t(i)*d)+s;
%     elseif t(i)>(2+s) 
%         x4(i)=0*d;
%     end
% end
%% ---------------------------------------------------------------------------------------------------------------
% Plots
%%-----------------------------------------------------------------------------------------------

% plot x1(t)
subplot(2,1,1);
plot(t,x1)     
xlabel('time--->');    
ylabel('Amp--->');
title('X1');
axis([-5.2 5.2 -0.2 2.2]);      
grid on; 

% plot x2(t)
subplot(2,1,2);
stairs(t,x2)     
xlabel('time--->');    
ylabel('Amp--->');
title('X2');
axis([-5.2 5.2 -0.2 1.2]);      
grid on;

% plot x1(t)+x2(t)
figure
subplot(2,1,1);
plot(t,xa)     
xlabel('time--->');    
ylabel('Amp--->');
title('X1+X2');
axis([-5.2 5.2 -0.2 3.2]);      
grid on;

%plot x1(t)-x2(t)
subplot(2,1,2);
plot(t,xs);
xlabel('time--->');    
ylabel('Amp--->');
title('X1-X2');
axis([-5.2 5.2 -2.2 2.2]);      
grid on;

%plot x1(t)*1.5
figure
subplot(2,1,1);
plot(t,xm);
xlabel('time--->');    
ylabel('Amp--->');
title('X1*1.5');
axis([-5.2 5.2 -0.2 3.2]);      
grid on;

%plot x1(t)/2
subplot(2,1,2);
plot(t,xd);
xlabel('time--->');    
ylabel('Amp--->');
title('X1/2');
axis([-5.2 5.2 -0.2 1.2]);      
grid on;

%plot x1(t-2)
figure
subplot(2,1,1);
plot(t,x3);
xlabel('time--->');    
ylabel('Amp--->');
title('Right Shift');
axis([-7.2 7.2 -0.2 2.2]);      
grid on;

% %plot x1(2t-1)
% subplot(2,1,2);
% plot(t,x4);
% xlabel('time--->');    
% ylabel('Amp--->');
% title('Right Shift');
% axis([-7.2 7.2 -5.2 5.2]);      
% grid on;