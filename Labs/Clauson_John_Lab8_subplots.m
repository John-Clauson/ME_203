% John Clauson
% Lab 9 subplots
% 09/22/2021

x = [0: 0.01: 2*pi]
y1 = sin(x);
y2 = sin(2*x);

subplot(2,1,1)
plot(x, y1)

subplot(2,1,2)
plot(x, y2)
