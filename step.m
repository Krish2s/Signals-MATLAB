clc;clear all; close all;
%% unit step 
t=-5:0.1:5;
l=length(t);
for i=1:l
    if t(i)<0
        unit_step(i)=0;
    else
        unit_step(i)=1;
    end
end
subplot(3,2,1);
stairs(t,unit_step);
axis([-5 5 -0.2 1.2])
grid on
title('unit step cont')
xlabel('time----->')
ylabel('amplitude--->')

subplot(3,2,2);
stem(t,unit_step);
axis([-5 5 -0.2 1.2])
grid on
title('unit step disc')
xlabel('time----->')
ylabel('amplitude--->')
%% ramp plot
for i=1:l
    if t(i)<0
        unit_ramp(i)=0;
    else
       
        unit_ramp(i)=t(i);
    end
end
subplot(3,2,3);
plot(t,unit_ramp)
axis([-5 5 -0.2 5])
title('ramp cont')
xlabel('time----->')
ylabel('amplitude--->')
grid on

subplot(3,2,4);
stem(t,unit_ramp)
axis([-5 5 -0.2 5])
title('unit ramp disc')
xlabel('time----->')
ylabel('amplitude--->')
grid on

%% exponential 
a=2
for i=1:l
    if t(i)<0
        unit_ex(i)=0;
    else
       
        unit_ex(i)=exp(-a*t(i));
    end
end
subplot(3,2,5);
plot(t,unit_ex)
axis([-5 5 -0.2 1.2])
title('exponential cont')
xlabel('time----->')
ylabel('amplitude--->')
grid on

subplot(3,2,6);
stem(t,unit_ex)
axis([-5 5 -0.2 1.2])
title('exponential disc')
xlabel('time----->')
ylabel('amplitude--->')
grid on
