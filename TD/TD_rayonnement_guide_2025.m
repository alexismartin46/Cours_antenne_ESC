clear all;
close all;

%% Données
c=3e8;
f=10e9;
a=22.86e-3/2;
b=10.16e-3/2;
eta=377;        % impédance d'onde dans l'air

Emax=14.1;      % champ électrique à 1m
Pabs=1;
theta_E=111;    % ouverture à -3dB plan E en °
theta_H=68;     % ouverture à -3dB plan H en °
r=1;            % distance en m

%% Calculs
lambda=c/f;
k=2*pi/lambda;

theta=linspace(-pi/2,pi/2,1000);
rE=((sin(k*b*sin(theta))).^2)./((k*b*sin(theta)).^2);       % Caractéristique de rayonnement dans le plan E

rE90=(sin(k*b))^2/((k*b)^2);     % valeur de r à 90° de la normale (en linéaire)
rE90dB=10*log10(rE90);           % valeur de r à 90° de la normale (en dB)

rH=((cos(theta)).^2).*((cos(k*a*sin(theta))).^2)./((1-((2*k*a/pi)*sin(theta)).^2).^2);       % Caractéristique de rayonnement dans le plan H

G=r^2*Emax^2/(60*Pabs);
GdB=10*log10(G);

G_ouverture_uniforme=4*pi*4*a*b/(lambda^2);
G_angle_ouverture_petit=36400/(theta_E*theta_H);

Rc=eta/sqrt(1-lambda^2/((4*a)^2));

%% tracé de r(theta)
figure;
plot(theta,rE);
title("r(theta) en linéaire dans le plan E");

figure;
plot(theta,10*log10(rE));
title("r(theta) en dB dans le plan E");
ylim([-30 0]);

figure;
plot(theta,rH);
title("r(theta) en linéaire dans le plan H");

figure;
plot(theta,10*log10(rH));
title("r(theta) en dB dans le plan H");
ylim([-30 0]);

