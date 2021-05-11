function v_apr = freefall_apr(t, m, c_d)
% freefall: approximate bungee velocity
% v_apr = freefall_apr(t, m, c_d) computes the 
% approximate free-fall velocity
% of an object with euler 
% input:
% t = time (s)
% m = mass (kg)
% c_d = second-order drag coefficient (kg/m)
% output:
% v = downward velocity (m/s)
g = 9.81; % acceleration of gravity


t_init= 0; %initial time
v_init = 0; %initial velocity

v_apr = zeros(1, length(t));

for ii = 1:length(t)
    v_apr(ii) = v_init + (g - (c_d/m)*v_init^2)*(t(ii)-t_init);
    v_init = v_apr(ii);
    t_init = t(ii);
end

