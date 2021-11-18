%Clauson, John
%10/25/2021
clc, clear, format compact

m = 0;
f = 0;
prompt = 'Enter how much money, in dollars, you have: ';
d = input(prompt);

while d >= 7.5
    if d >= 15
        m = m+2;
        f = f+1;
        d = d-15;
    else
        m = m+1;
        d = d-7.5;
    end
end

fprintf('you can buy %i meals and you get %i free meals', m, f)