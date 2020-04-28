clc; close all; clear all;
%% z-transform
% z transform of an expression
syms z n
x=input('enter the expression for calcuating z tranform: ' )
X=ztrans(x)
disp('inverse z transform of that function:')
p=iztrans(X)


%% stability and causality
clc; close all; clear all;
b= input('eneter the numerator coeff: ')
a= input (' enter the denominator coef: ')
H= filt(b,a);
disp('zeros are at:' )
Z= zero(H)
[r p k] = residuez(b,a)
disp('poles are at:')
disp(p)
zplane(b,a)
title('pole zero plot in z plane')
if max(abs(p))>=1
    disp('unstable and causal')
else 
    disp('stable and causal')
end
