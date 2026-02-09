clear all;
close all;

theta_deg=linspace(-90,90,1000);
theta_rad=theta_deg*pi/180;
c=3e8;

freq=24e9;        % fréquence (Hz)
lambda=c/freq;    % longueur d'onde (m)
k=2*pi/lambda;    % nombre d'onde (m^-1)

d=0.8*lambda;     % Distance inter-éléments (m)
N=6;              % Nombre d'éléments
psi_deg=0;        % Déphasage(deg)
psi_rad=psi_deg*pi/180; % déphasage (rad)

f=1/sqrt(N)*sin(N*(k*d*sin(theta_rad)-psi_rad)/2)./sin((k*d*sin(theta_rad)-psi_rad)/2);
f_norm_abs=abs(f)/max(abs(f));

figure;
plot(theta_deg,abs(f)/max(abs(f)));
title("Normalized array factor (linear)");
xlabel("theta (°)");
ylabel("f(theta), normalized in linear");

figure;
plot(theta_deg,10*log10(abs(f)/max(abs(f))));
title("Normalized array factor (dB)");
xlabel("theta (°)");
ylabel("f(theta), normalized in dB");
ylim([-20 0]);

X=find(abs(f_norm_abs(250:750)-0.5)<0.01);
theta_3dB=theta_deg(X(end))-theta_deg(X(1));