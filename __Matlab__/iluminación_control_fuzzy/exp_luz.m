clc; clear all;

k=1;
for i=0.1:0.1:3  
% luz(k)= 189*log10(i);
    %luz(k)= 512-348.22*log10(i)+348.22;
luz(k)= round(597.654*exp(-i)-28.76);
    k=k+1;
end

plot(luz);