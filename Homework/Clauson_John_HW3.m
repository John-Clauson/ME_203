%Clauson, John
%11/01/2021
%HW 3

clc,clear all, format compact

%% Promlem 1
A = [0 -7 6; 5 -4 3; 10 -1 9; 15 1 0; 20 2 -1]

subplot(2,1,1); %So that all plots in the Homework section are on one page
plot(A(:,1),A(:,2)) %: means that it will use all values in that column
hold on %Makes sure both plots are on the same graph
plot(A(:,1),A(:,3),'r')
title('Problem 1') %Formatting
xlabel('Time (s)')
ylabel('Force (N)')
legend("Column 2", "Column 3")

%% Problem 2
A2 = [3 7 -4 12; -5 9 10 2; 6 13 8 11; 15 5 4 1]
i = 1;
j = 1;

disp('a: ')
B2 = [A2(:,2),A2(:,3),A2(:,4)]; %Setting up B matrix
B2 = B2' %Needs to be flipped on its side

disp('b: ')
C2 = [A2(2,:);A2(3,:);A2(4,:)];%C matrix
C2 = C2'

disp('c: ')
while i <= 2 %iterates over number of rows
    while j <= 3 %iterates over number of columns
        D2(i,j) = A2(i,j+1);
        j = j+1;
    end
    i = i+1; %switches to next row
    j = 1; %resets column index
end

D2 = D2' %transposes matrix to get correct dimensions

%% Problem 3

A3 = [56 32; 24 -16]; 
B3 = [14 -4; 6 -2];

disp('a: ')
Array_Prod = A3*B3 %array multiplication

disp('b: ')
Right_Div = A3/B3 %right division

disp('c: ') 
B_Cubed = B3.^3 %array scalar cubing

%% Problem 4

a4 = 6*pi*atand(12.5) + 4

b4 = 5*tan(3*asin(13/5))

%% Problem 5

disp('a:')

e1 = [-2 1; -2 1]; %coefficients
t1 = [-5 3]; %solutions

s1 = t1/e1 %right division for variable values

disp('b:')

e2 = [-2 1; -8 4]; %Same pattern as the previous pattern, and repeated for c and d
t2 = [3 12];

s2 = t2/e2

disp('c:')

e3 = [-2 1; -2 1];
t3 = [-5 -5.00001];

s3 = t3/e3

disp('d:')

e4 = [1  5 -1 6; 2 -1 1 -2; -1 4 -1 3; 3 -7 -2 1]; %four equations/vars works the same way
t4 = [19 7 30 -75];

s4 = t4/e4

%% Problem 6

t = (1:0.1:3) %Array from 1 to 3
T = 6*log(t) - 7*exp(0.2*t) %function

subplot(2,1,2); %plot location
plot(t,T) %Plotting function T by array t

%% Problem 7

kt1 = 0;
kf1 = 0;
kt2 = 0;
kf2 = 0;

for a = 1:100 % iterates 10,000 times over different combinations of a,b,c and d
    for b = 1:100
        for c = 1:100
            for d = 1:100
                if((a == b) & ((c == d)|(a == c)))
                    kt1 = kt1+1; %If this logical statement is true, then it will add one to the statement 1 true tally
                else
                    kf1 = kf1+1; %If not, one is added to the false tally
                end
    
                if((a==b) | (b==c)&(a==c)) %same here
                    kt2 = kt2+1;
                else
                    kf2 = kf2+1;
                end
            end
        end
    end
end

%kt1
%kf1
%kt2
%kf2

if ((kt1 == kt2) & (kf1 == kf2)) %This checks to see if they are true the same amount of times
    disp("Equivalent") %True means that the statements are Equivalent
else
    disp("Not Equivalent") %False means theyre not
end

%% Problem 8
prompt = "Enter your grade as a number between 0 and 100: ";

gn = input(prompt)

if (gn > 100) | (gn < 0) %Makes sure that the user input is a valid entry
    disp("Try again, that is not a valid score")
    gn = -10;
end

%Part a
if (gn >= 0) %incrimentally finds the highest grade the number will reach
    if (gn >= 60)
        if gn >= 70
            if gn >= 80
                if gn >= 90
                    disp("A")
                else
                    disp("B") %if it won't go higher, then that is the letter the numerical grade recieves
                end
            else
                disp("C")
            end
        else
            disp("D")
        end
    else
        disp("F")
    end
end

%Part b
if (gn >= 90) %uses elseif statements to find the lowest letter grade it corresponds to
    disp("A")
elseif (gn < 90) | (gn >= 80) %letter grade will be displayed between given number grade
    disp("B")
elseif (gn < 80) | (gn >= 70)
    disp("C")
elseif (gn < 70) | (gn >= 60)
    disp("D")
else
    disp("F") %anything below 60 will display "F"
end
    
    


