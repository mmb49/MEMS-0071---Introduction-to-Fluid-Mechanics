clear all
close all
clc

%% Problem #3

r = linspace(1,3,100);

ra = 1;
rb = 3;
W = 5;

c1 = W/log(ra/rb);
c2 = (W*log(rb))/log(ra/rb);

u = @(r) c1.*log(r) - c2;

plot(r,u(r))
xlabel('r')
ylabel('u_{z}(r)')
ylim([0 5])

