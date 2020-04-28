clc;clear all;close all;
display('***Z transform***')
syms z n
x=input('enter the expansion to calculate Z transform:')
X=ztrans(x)
disp('***inverse Z transform***')
p=iztrans(X)



%%STABILITY AND CAUSALITY
clc;clear all;close all;
b=input('enter num coeff:');
a=input('enter den coeff;');
H=filt(b,a)
disp('zeros are at')
z=zero(H)
[r p k]=residuez(b,a)
disp('poles are at')
disp (p)
zplane(b,a)
title('Pole zero plot in z plane')
if max(abs(p))>=1
    disp('unstable & casual')
else
    disp('Stable & Causal')
end
