clear all;
close all;

f=5e9;
eps_r=2.5;
h=1.5e-3;
c=3e8;
eta=377;

lambda_0=c/f;

%% Question 1
W=lambda_0/2;

%% Question 2
Z_c=10;
eps_eff=(eps_r+1)/2+(eps_r-1)/(2*sqrt(1+12*h/W));
Z_calc=120*pi/(sqrt(eps_eff)*(W/h+1.393+0.667*log(W/h+1.444)));

%% Question 3
%eps_eff=(eps_r+1)/2+(eps_r-1)/(2*(1+12*h/W));
lambda_g=lambda_0/sqrt(eps_eff);
l_0=lambda_g/2;

%% Question 4
delta_L=0.412*h*(eps_eff+0.3)/(eps_eff-0.258)*(W/h+0.264)/(W/h+0.8);
L=l_0-2*delta_L;

%% Question 5
G_r=4*pi*W^2/(3*eta*lambda_0^2);
Z_in0=1/(2*G_r);

%% Question 6
d1=lambda_g/8;
d2=l_0-lambda_g/8;

beta=2*pi/lambda_g;
Z1=Z_c*(1/G_r+1i*Z_c*tan(beta*d1))/(Z_c+1i*tan(beta*d1)/G_r);
Z2=Z_c*(1/G_r+1i*Z_c*tan(beta*d2))/(Z_c+1i*tan(beta*d2)/G_r);

Z1_calc=Z_calc*(1/G_r+1i*Z_calc*tan(beta*d1))/(Z_calc+1i*tan(beta*d1)/G_r);
Z2_calc=Z_calc*(1/G_r+1i*Z_calc*tan(beta*d2))/(Z_calc+1i*tan(beta*d2)/G_r);

Z_in=Z1*Z2/(Z1+Z2);

Z_in_calc=Z1_calc*Z2_calc/(Z1_calc+Z2_calc);


