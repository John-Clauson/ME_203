% Clauson, John
% ME203 Homework 2
% 10/04/2021

clc, clear, format compact
%% Problem 1
disp("Problem 1")

p1x = [1:0.2:5]; %Array from 1 to 5 in intervals of 0.2
p1y = 7*sin(4*p1x); %Array of 7sin(4p1x)

p1L = length(p1y) %Outputs length of array p1y

thirdVal = p1y(3) %Outputs value of third value in array p1y

%% Problem 2

disp("Problem 2")

p2x = [sin(-pi/2): 0.05: cos(0)]; %Generates array from sin(-pi/2) to cos(0)

p2L = length(p2x) %Outputs length of p2x

tenthVal = p2x(10) %Outputs 10th value in array p2x

%% Problem 3

disp("Problem 3")

p3r = [13 182 -184 2503]; %Quadratic formula as an array

p3roots = roots(p3r) %Solving for roots of quadratic formula

%% Problem 4

disp("Problem 4")

p4a = 6*pi*atan(12.5)+4 
p4b = 5*tan(3*asin(13/5))

%% Problem 5

disp("Problem 5")

r = 10; %Setting up variables
g = [0:0.1:4*pi]; 

p5x = r * (g - sin(g)); %Equations to graph
p5y = r * (1 - cos(g));

subplot(2,3,1) %Graph location
plot(p5x, p5y) %Plotting p5x vs p5y

%% Problem 6

disp("Problem 6")

t = [1:0.1:3]; %Setting up the interval that t will be plotted over
T = 6*log(t) - 7*exp(0.2*t); %Y-axis equation

subplot(2,3,2)
plot(t,T) %Plot and formatting
title("Temperature change over time")
xlabel("Time (s)")
ylabel("Temperature (°C)")

%% Problem 7

disp("Problem 7")

R = 286.7; %(N*m/kg*K)
T = 293; % Degrees Kelvin
V = [20:0.5:100];

m1 = 1; %Kilogram
m2 = 3; %Kilogram
m3 = 7; %Kilogram

p1 = (m1 * R * T)./V; %Setting up equations for each value of m
p2 = (m2 * R * T)./V;
p3 = (m3 * R * T)./V;

subplot(2,3,3) %Setting location for graphs
plot(V, p1, 'b') %Plot for m1, blue line
txt1 = '\leftarrow m1'; %Lableing function p1 for readablity
text(50, (m1 * R * T)/50, txt1)
title("Pressure vs. Volume") %Labeling graph and axes
xlabel("Volume")
ylabel("Pressure")
hold on

plot(V, p2, 'g') %Plot for m2, green line
txt2 = '\leftarrow m2';
text(30, (m2 * R * T)/30, txt2)

plot(V, p3, 'r') %Plot for m3, red line
txt3 = '\leftarrow m3';
text(70, (m3 * R * T)/70, txt3) 

%% Problem 8 

disp("Problem 8")

b = 0.1:0.0001:20;%no matter what b is, the graph will always cap out at 1

t = 0.1:0.0001:20;

y=1-exp(-b.*t);

subplot(2,3,4) %Graph location
plot(t, y) %Plotting t vs. y
title('Problem 8') %Graph formatting
xlabel('time (s)')
ylabel('y(t)')
axis([0 20 0 1.5])

tol = 0.5e-5; %Setting up tolerance so that we can
time = t(abs(y-0.98) < tol) %Finding t for when y = 0.98, within the above tolerance
% I had to look this section of code up, and then adjust it to my code

% y(t) will approach infinitely close to 1 with all values b>0

%% Problem 9

disp("Problem 9")

r = [0.5:0.1:100]; %The interval over which r will be plotted

V1 = (4*pi*r.^3)/3; %Volume Equation
A = 4*pi*r.^2; %Surface Area Equation

subplot(2,3,5) %Plot location
plot(r,V1) %Plotting V1 verses r
title('Volume vs. radius') %Labelling graphs
xlabel('Radius')
ylabel('Volume')

subplot(2,3,6) %Same as above (128-132) Just now for A verses r
plot(r,A)
title('Surface Area vs. radius')
xlabel('Radius')
ylabel('Surface area')









