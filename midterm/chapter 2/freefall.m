function v = freefall(t, m, c_d)
% freefall: bungee velocity with second-order drag
% v=freefall(t,m,c_d) computes the free-fall velocity
% of an object with second-order drag
% input:
% t = time (s)
% m = mass (kg)
% c_d = second-order drag coefficient (kg/m)
% output:
% v = downward velocity (m/s)
g = 9.81; % acceleration of gravity
v = sqrt(g * m / c_d)*tanh(sqrt(g * c_d / m) * t);
