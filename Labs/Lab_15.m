%Clauson, John
%10/25/2021
%Lab_15
clc, format compact

i = 1
j = 1
a = ones(4,4)
for i = 1:4
    for j = 1:4
        if i==j
            a(j,i) = 2*(i+1)
        else
            a(i,j) = j
        end
        ++j
    end
    i=i+1
    j=0
end
%%
plot(x,y)
%%
x=input('enter the x value: ');
%%
prompt = 'Do you want more practice? Y/N; ';
str=input(prompt,'s');

if str == 'Y'
    disp('Next Problem')
else
    disp('Done')
end