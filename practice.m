x = [-5:.1:5];
y1 = normpdf(x,0,1);
y2 = normpdf(x,0,0.5);
y3 = normpdf(x,1.5,0.7);
y4 = normpdf(x,-1.5,1.3);
y5 = normpdf(x,2.5,1);

plot(x,y1)
hold on
plot(x,y2)
plot(x,y3)
plot(x,y4)
plot(x,y5)

grid on
axis on
