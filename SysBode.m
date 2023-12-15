clear
clc
num=[2 -2];
den=[1 -2 2];
sys1=tf(num,den);
w=logspace(-1,4,200);
[mag,phase]=bode(sys1,w);
loglog(w,squeeze(mag)),grid;
% semilogx(w,squeeze(phase)),grid;