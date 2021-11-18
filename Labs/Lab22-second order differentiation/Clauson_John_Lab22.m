%Clauson, John
%11/15/2021
%Lab 22
clc, clear all, format compact

%% Example 1
xrange = [0 5];
initial = [0.05 0];
[x,s] = ode45('secondorder',xrange,initial);

subplot(3,2,1)
plot(x,s(:,1))
xlabel('x')
ylabel('s')

subplot(3,2,2)
plot(x,s(:,2))
xlabel('x')
ylabel('dy_dx');

%% Example 2
xrange = [0 2];
initial = [0 0];
[x,s] = ode45('secondorder2',xrange,initial);

subplot(3,2,3)
plot(x,s(:,1))
xlabel('x')
ylabel('y')

subplot(3,2,4)
plot(x,s(:,2))
xlabel('x')
ylabel('dy_dx');

%% Example 3

xrange = [0 5];
initial = [0 4];
[x,s] = ode45('secondorder3', xrange, initial);

subplot(3,2,5)
plot(x,s(:,1))
xlabel('x')
ylabel('y')

subplot(3,2,6)
plot(x, s(:,1))
xlabel('x')
ylabel('dy_dx')