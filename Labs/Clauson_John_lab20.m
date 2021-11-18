%Clauson,John
%11/08/2021
%Lab 19 
clc,clear,format compact

x = linspace(0,pi,100);
y = sin(x);
trapz(x,y)
%%
ca = cumtrapz(x,y)
plot(x,y,x,ca)

%%
f=@(x) (sin(x));
integral(f,0,pi)

%%
xmin = pi;
xmax = 2*pi;
ymin = 0;
ymax = pi;

F =@(x,y)(y.*sin(x) + x.*cos(y));

q = integral2(F, xmin, xmax, ymin, ymax)

%%
xmin = pi;
xmax = 2*pi;
ymin = 0;
ymax = @(x) (x);
zmin = 0;
zmax = @(x,y) (x+y);

F3 = @(x,y,z) (z.*(y.*sin(x) + x.*cos(y)));
i3 = integral3(F3, xmin, xmax, ymin, ymax, zmin, zmax)