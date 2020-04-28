clc;clear all; close all;
%% shifting
shift=2;
t=-5:0.01:5;
l=length(t);
for i=1:l
    if t(i)<(-3+shift)
        gr1(i)=0;
    elseif t(i)<(-1+shift)
        gr1(i)=1;
    elseif t(i)<shift
        gr1(i)=2;
    elseif t(i)<(2+shift)
        gr1(i)=2-t(i)+shift;
    else
        gr1(i)=0;
    end
end
figure
subplot(2,1,1);
plot(t,gr1);
axis([-7 7 -2 5])
grid on
title('x1(t)')
xlabel('time----->')
ylabel('amplitude--->')