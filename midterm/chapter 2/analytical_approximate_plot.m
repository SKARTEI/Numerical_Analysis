
m = 68.1; % mass
c_d =0.25; % drag coefficient
g = 9.81; % accleration due to gravity
t = 0:2:20; %time
v_ana = freefall(t,m,c_d);
v_app = freefall_apr(t,m,c_d);

plot(t, v_ana, 'o-')
title ('comparison of analytical and approximate solution of jumper velocity')
xlabel ('time(s)')
ylabel ('velocity(m/s)')
grid on

hold on

plot (t, v_app, '>-')

hold off
