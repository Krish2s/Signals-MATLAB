clc;clear all;close all;
x=input('enter x vector')
h=input('enter h vector')
m=length(x)
n=length(h)
X=[x,zeros(1,n)]
H=[h,zeros(1,m)]
for i=1:n+m-1
    y(i)=0
    for j=1:m
        if(i-j+1>0)
            y(i)=y(i)+X(j)*H(i-j+1)
        else
        end
    end
end
y
stem(y)