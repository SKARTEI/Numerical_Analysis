
m = 68.1; %mass of the jumper
g = 9.81; %acceleration due to gravity
c_d = 0.25; %drag's coefficient
t = 0:2:12; % time rate 


v = sqrt(g*m /c_d)*tanh(sqrt(g*c_d/m)*t)  % predicted velocity of the jumper
