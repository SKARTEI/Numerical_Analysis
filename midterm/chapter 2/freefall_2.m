function v = freefall_2(t,m)
% freefall: bungee velocity with second-order drag using global variable g and c_d
% v = freefall(t,m) computes the free-fall velocity
% of an object with second-order drag
% input:
% t = time (s)
% m = mass (kg)
% 
% output:
% v = downward velocity (m/s)


global g c_d
v = sqrt(g * m / c_d)*tanh(sqrt(g * c_d / m) * t);