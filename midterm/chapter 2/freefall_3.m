function v = freefall_3(t, m, c_d)
% freefall: bungee velocity with second-order drag using sub function 'vel'
% v = freefall(t,m) computes the free-fall velocity
% of an object with second-order drag
% input:
% t = time (s)
% m = mass (kg)
% 
% output:
% v = downward velocity (m/s)

v = vel(t, m, c_d);


function v = vel(t, m, c_d)

g = 9.81;
v = sqrt(g * m / c_d)*tanh(sqrt(g * c_d / m) * t);