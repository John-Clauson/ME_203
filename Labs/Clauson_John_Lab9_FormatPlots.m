% Clauson, John
% Lab 9 Format Plots
% 09/22/2021

clc, clear, format compact

x = [1:1:10];
y = [58.5, 63.8, 64.2, 67.3, 71.5, 88.3,...
    90.1, 90.6, 89.5, 90.4];


plot(x,y, ':ok')
hold on
plot(x, 2*y, '--*r')
hold on
plot(x, y/2, '-.pb')

axis([0, 11, 0, 200])
title('FormatPlots')
legend('y', '2*y', 'y/2')
xlabel('x axis')
ylabel('y axis')
text(1, 180, 'this is the bottom right corner')
gtext('I did it!')