clear all
close all
clc

%% Problem #2

r = linspace(1,3,100);

ra = 1;
rb = 3;
omega = 5;

c1 = (omega*ra)/(rb*((ra/rb) - (rb/ra)));
c2 = (-omega*ra*rb)/((ra/rb) - (rb/ra));

u = @(r) c1.*r + c2./r;

plot(r,u(r))
xlabel('r')
ylabel('u_{\theta}(r)')