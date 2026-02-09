clear all;
close all;

f=20e9;
k=2*pi*f/3e8;
d=7.4e-3;
N=4;

%% Question 4
psi=0;
ux=linspace(-1,1,1000);
theta=linspace(-90,90,1000);
f0=1/sqrt(N)*sin(N/2*(k*d*ux-psi))./sin((k*d*ux-psi)/2);
f1=1/sqrt(N)*sin(N/2*(k*d*sin(theta*pi/180)-psi))./sin((k*d*sin(theta*pi/180)-psi)/2);


figure;
plot(asin(ux)*180/pi,abs(f0));
title('Facteur de réseau Psi=0, plan H');
xlim([-90 90]);
xlabel('theta (°)');


p=1;
theta1=asin(p*pi/(N/2*k*d))*180/pi;
p=-1;
theta2=asin(p*pi/(N/2*k*d))*180/pi;



% W=5.8e-3;
% theta=linspace(-pi/2,pi/2,1000);
% patch=sin(k*W*sin(theta)/2)./(k*W/2*sin(theta));
% figure;
% plot(theta*180/pi,abs(patch));
% title('Diagramme du patch seul, plan H');


%% Question 5
psi=-45*pi/180;
theta_psi45=asin(psi/(k*d))*180/pi;

p=1;
zero_psi45=asin((p*pi/2+psi)/(k*d))*180/pi;
p=2;
zero_psi45_2=asin((p*pi/2+psi)/(k*d))*180/pi;
p=-1;
zero_psi45_3=asin((p*pi/2+psi)/(k*d))*180/pi;

f45=1/sqrt(N)*sin(N/2*(k*d*ux-psi))./sin((k*d*ux-psi)/2);

figure;
plot(asin(ux)*180/pi,20*log10(abs(f45)/2));
title('Facteur de réseau Psi = - 45°, plan H');
xlim([-90 90]);
ylim([-30 0]);
xlabel('theta (°)')



psi=-90*pi/180;
theta_psi90=asin(psi/(k*d))*180/pi;

p=1;
zero_psi90=asin((p*pi/2+psi)/(k*d))*180/pi;
p=2;
zero_psi90_2=asin((p*pi/2+psi)/(k*d))*180/pi;

f90=1/sqrt(N)*sin(N/2*(k*d*ux-psi))./sin((k*d*ux-psi)/2);

figure;
plot(asin(ux)*180/pi,abs(f90));
title('Facteur de réseau Psi = - 90°, plan H');
xlim([-90 90]);
xlabel('theta (°)')


%% Question 6
w=0.5e-3;
h=0.508e-3;
eps_r=3.38;

eps_eff=(eps_r+1)/2+(eps_r-1)/(2*sqrt(1+12*h/w));
lambda_g=(3e8)/(f*sqrt(eps_eff));
