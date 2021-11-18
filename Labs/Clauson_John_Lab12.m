%Clauson, John
%10/06/2021
%Lab 12

clc, clear, format compact

x = [-4:0.5:6] %x array

f = (x+2).*(x-1).*(x-3) %function

plot(x,f) %Plotting x vs f
title('Lab 12') %formatting
xlabel('x')
ylabel('y')
text(4, 18, 'f = (x+2)*(x-1)*(x-3)')
legend('y = (x+2)(x-1)(x-3)')
