%Clauson,John
%11/10/2021
%Homework 4

clc,clear,format compact

%% Problem 1

disp("Problem 1:")

A1 = [3 5 -4; -8 -1 33; -17 6 -9]; %Setting up matrix

i1 = 1;
j1 = 1;

[a1,b1] = size(A1); %Determines dimensions of given matrix A1

for i1 = 1:a1 %loops to iterate over all locations on the matrix
    for j1 = 1:b1
        if A1(i1,j1) < 1 
            %if the given location A1(i1,j1) is less than one, B1a is equal to A1 plus 20.
            B1a(i1,j1) = A1(i1,j1)+20;
        else %if the given location is greater or equal than 1, the natural 
            %log of the location is taken, and then 20 is added to the result 
            B1a(i1,j1) = log(A1(i1,j1));
        end
    end
end

i1 = 1; %resets i1 and j1
j1 = 1;

disp("Method 1:")
B1a

if A1(1,1) >= 1 %Much less efficient, but this runs through all indecies in the matrix
    B1b(1,1) = log(A1(1,1));
else
    B1b(1,1) = A1(1,1) + 20;
end

if A1(1,2) >= 1
    B1b(1,2) = log(A1(1,2));
else
    B1b(1,2) = A1(1,2) + 20;
end

if A1(1,3) >= 1
    B1b(1,3) = log(A1(1,3));
else
    B1b(1,3) = A1(1,3) + 20;
end

if A1(2,1) >= 1
    B1b(2,1) = log(A1(2,1));
else
    B1b(2,1) = A1(2,1) + 20;
end

if A1(2,2) >= 1
    B1b(2,2) = log(A1(2,2));
else
    B1b(2,2) = A1(2,2) + 20;
end

if A1(2,3) >= 1
    B1b(2,3) = log(A1(2,3));
else
    B1b(2,3) = A1(2,3) + 20;
end

if A1(3,1) >= 1
    B1b(3,1) = log(A1(3,1));
else
    B1b(3,1) = A1(3,1) + 20;
end

if A1(3,2) >= 1
    B1b(3,2) = log(A1(3,2));
else
    B1b(3,2) = A1(3,2) + 20;
end

if A1(3,3) >= 1
    B1b(3,3) = log(A1(3,3));
else
    B1b(3,3) = A1(3,3) + 20;
end

disp("Method 2:")
B1b

%% Problem 2:
clear all

disp("Problem 2:")

k = 1; b = -2; x = -1; y = -2; %Given Script
while k <= 3 
    [k,b,x,y]
    y = x.^2 - 3;
    if y < b
        b = y;
    end
    x = x + 1;
    k = k + 1;
end

img = imread('HW4SS.png'); %Image display function
image(img);


%% Problem 3
clear all

disp("Problem 3:")

m_m = 0.2000; %Given values for each material
w_w = 0.3500;
m_w = 0.4000;
r_c = 0.7000;

%Input command asking for string ('s') input
i2 = input("Input material as the first letter of both materials (mm):", 's');

m = -1; 

switch lower(i2) %Switch statement to evaluate user input
    case {'mm'}
        m = m_m;
    case {'ww'}
        m = w_w;
    case {'mw'}
        m = m_w;
    case {'rc'}
        m = r_c;
    otherwise %if user input does not match
        disp('This input is not valid');
        m = 1;
end

if m >= 0
    w1 = input("Input the weight of the material:");
    F1 = m*w1
end

%% Problem 4
clear all

disp("Problem 4:")

x1 = input("Input x1: "); %Asking for user inputs for each coordinate val
y1 = input("Input y1: ");
x2 = input("Input x2: ");
y2 = input("Input y2: ");
x3 = input("Input x3: ");
y3 = input("Input y3: ");
x4 = input("Input x4: ");
y4 = input("Input y4: ");

%setting up 4x4 matrix
E1 = [x1^3 x1^2 x1 1; x2^3 x2^2 x2 1; x3^3 x3^2 x3 1; x4^3 x4^2 x4 1]; 

%setting up 1x4 matrix of y vals
S1 = [y1; y2; y3; y4];

%solving for final polynomial coefficients, and assgning vals to array
%coeff
coeff = inv(E1)*S1;

%Assigning each coefficient to alphabetical value matching general equation
%F(x) = ax^3 + bx^2 + cx + d
a = coeff(1)
b = coeff(2)
c = coeff(3)
d = coeff(4)

%% Problem 5
clear all

disp("Problem 5:")

t = [0:0.001:4];
x5 = 5.*t - 10;
y5 = 25*t.^2 - 120.*t + 144;
x0 = 0;
y0 = 0;

%Does not need a loop, array will generated for d1 regrdless, but it is
%required for the homework
for s = 0:length(t)
    d1 = sqrt((x5-x0).^2+(y5-y0).^2);
end

d = min(d1); %finds min value of array d1, and assigns to d

dindex = find(d1 == d); %finds index of min d1 value

min = d1(dindex) %finds vals associated with index value found
tmin = t(dindex)
