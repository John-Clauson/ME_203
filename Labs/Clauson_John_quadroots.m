% John Clauson
% ME 203, Section 1001
% 09/15/2021
% Quadroots 

clc;clear all; format compact;

% Given
a = 3;
b = 11;
c = 2;

% Solve
q = -b/(2*a);
r = sqrt(b^2 - 4*a*c)/(2*a);

s1 = q+r;
s2 = q-r;

%First display method in the lab, replaced below
%disp('First root');
%disp(s1);
%disp('Second root');
%disp(s2);

%% or

fprintf('The first root is %0.1f and the second root is %0.1f \n', s1, s2)