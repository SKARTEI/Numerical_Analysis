
cd = 0.25; % drag coefficient

g = 9.81; % acceleration due to gravity

v = 36; % velocity of the jumper

t = 4;  % time

m = linspace(50,250); % mass of the jumper

f_m = sqrt(g*m/cd).*tanh(sqrt(g*cd./m)*t)- v;

plot(m,f_m, '-^')

grid on

xlabel ('mass(kg)')
ylabel ('function f(m)')
title ('plot of f(m) against m')



%use this to check if the mass, m = 142.74, you noticed that f_m2 is almost
%zero
f_m2 = sqrt(g*142.74/cd)*tanh(sqrt(g*cd/142.74)*t)- v ;




