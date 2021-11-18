%Clauson,John
%11/04/2021
%Lab 18

x = 1:6;
y = [1 22 50 62 97 110];
z = polyfit(x,y,1);

y1 = polyval(z,x)
plot(x,y,'o');
hold on
plot(x,y1,'g');

rms(y1)

%%

x = 0:5;
xi = 3.6;
t1 = [0 20 60 68 77 110];
t2 = [0 25 62 67 82 103];
t3 = [0 52 90 91 93 96];

i1 = interp1(x,t1,xi)
i2 = interp1(x,t2,xi)
i3 = interp1(x,t3,xi)

%% Rolling Dice Example
clc,clear,format compact

r1 =6*rand(1,10);
r2 = round(r1+0.5)
r3 = ceil(r1)
r4 = fix(r1+1)
r5 = floor(r1+1)

xc = [1 2 3 4 5 6]

hist(r2,xc)