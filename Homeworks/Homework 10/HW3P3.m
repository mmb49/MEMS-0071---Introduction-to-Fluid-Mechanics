clear all
close all
clc

%% Problem #4

r = linspace(1,3,100);

ra = 1;
rb = 3;
dP = -5;
mu = 1;

c1 = ((rb^2 - ra^2)/(4*mu*log(ra/rb)))*dP;
c2 = ((log(rb)*ra^2 - log(ra)*rb^2)/(4*mu*log(ra/rb)))*dP;

u = @(r) (1/(4*mu))*dP*(r.^2 + ((rb^2 - ra^2)*log(r) + log(rb)*ra^2 - log(ra)*rb^2)/log(ra/rb));

plot(r,u(r))
xlabel('r')
ylabel('u_{z}(r)')

