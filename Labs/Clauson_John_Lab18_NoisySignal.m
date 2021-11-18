%Clauson,John
%11/03/2021
%Noisy Signal Sim
clc,clear,format compact

t = linspace(0, 10, 512);
S = sin(2*pi.*t./5);

N = (0.1)*randn(size(t));

X=S+N;

SNR = 20*log10(std(S)/std(N))

plot(t,X)
title("Noisy Signal")
xlabel("time (s)")
ylabel("Signal Temp")