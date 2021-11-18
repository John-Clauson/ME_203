%Clauson, John
%11/10/2021
%Lab 21: Differentiation

clc, clear, format compact

%% Ex 1

x = 0:0.1:10;
y = cos(x);
n = length(x);
dy = y(3:n)-y(1:n-2);
dx = x(3:n) - x(1:n-2);
dy_dx = dy./dx;

plot(x,y,x(2:n-1),dy_dx)
legend('cos(x)','dy_dx(cos(x))')

%% ODE45
xrange = [0, 3];
yinitial = 1;
F = @(x,y) (-2*x^3+x-y);

[X,Y] = ode45(F, xrange, yinitial);

plot(X,Y);
