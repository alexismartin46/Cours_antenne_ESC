clear all;
close all;

%% Question 4
k=1;
d=3*pi;
ux=linspace(-1,1,1000);
f1=abs(cos(k*d*ux));
f2=f1.^2;
f3=f2.*f1;

figure;
hold all;
plot(ux,f1,'r');
plot(ux,f2,'k');
plot(ux,f3,'g');
legend(["f1","f2","f3"]);

%% Partie II
%% 
% clear all;
% close all;
% N=8;
% d=16.25e-3; %en m
% lambda=3e8/10e9;
% S=83.75e-3*118.95e-3;
% S2=130e-3*90e-3;
% G=10*log10(4*pi*S/(lambda^2))
% G2=10*log10(4*pi*S2/(lambda^2))


