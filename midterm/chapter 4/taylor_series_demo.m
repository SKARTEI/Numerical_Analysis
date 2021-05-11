x=0:1:6;
true_f = -0.1* x.^4 - 0.1*x.^3 -0.5*x.^2 - 0.25*x.^1 + 1*x.^0   ;
zero_f = 1*x.^0;
first_f = - 0.25*x.^1 + 1*x.^0;
second_f = -0.5*x.^2 - 0.25*x.^1 + 1*x.^0;

plot(x, true_f, '-o', 'linewidth', 1.5);
hold on
axis on
grid on
xlabel('x');
ylabel('f(x)');
ylim([0, 1.50]);
xlim([0, 1.50]);
plot(x, zero_f, '-+', 'linewidth', 1.5);
plot(x, first_f, '-*', 'linewidth', 1.5);
plot(x, second_f, '-^', 'linewidth', 1.5);
legend('true','zero order','first order','second order')
hold off