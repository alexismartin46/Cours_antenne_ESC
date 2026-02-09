clearvars;
close all;

N=8;
kd=4*pi;   % k=2*pi/lambda 
psi=0;
theta=linspace(-pi,pi,1000);
u=linspace(-1,1,1000);

f1=1/sqrt(N)*abs(sin(N*(kd*sin(theta)-psi)/2)./sin((kd*sin(theta)-psi)/2));
f2=1/sqrt(N)*abs(sin(N*(kd*u-psi)/2)./sin((kd*u-psi)/2));


figure(1);
ax=polaraxes;
polarplot(theta,f1,'LineWidth',2);
ax.ThetaZeroLocation ='top';


figure(2);
plot(u,f2,'LineWidth',2);
%xlab=texlabel('\vec{u}');
xlabel('$\vec{u}.\vec{e_z}$','Interpreter','latex');
ylabel('$|f|$','Interpreter','latex');
ax=gca;
ax.FontSize=20;