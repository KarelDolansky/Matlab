%1
figure(1)
fi =0:2*pi/6:2*pi;
x=4*sin(fi);
y=4*cos(fi);
plot(x,y)

%3a
figure(2)
x=-5:0.05:5;
exp(1);
plot(fukce(x),'DisplayName','fukce(x)')
hold on   
plot(fukce(x,1),'DisplayName','fukce(x,1)','Color','green')
plot(fukce(x,2),'DisplayName','fukce(x,2)','Color','red')
legend;
xlabel("x");
ylabel("y");
title("f(x,y) = x*e^(-x^2-y^2) + tanh(xy);");
figure(3)
x=-5:0.05:5;
g1 = subplot(3,1,1);
plot(fukce(x))
g1.XLabel.String = 'x';
g1.YLabel.String = 'y';
legend(g1,'fukce(x)');
title(g1,'fukce(x)');
g2 = subplot(3,1,2);
plot(fukce(x,1),'Color','green')
g2.XLabel.String = 'x';
g2.YLabel.String = 'y';
legend(g2,'fukce(x,1)');
title(g2,'fukce(x,1)');
g3 = subplot(3,1,3);
plot(fukce(x,2),'Color','red')
g3.XLabel.String = 'x';
g3.YLabel.String = 'y';
legend(g3,'fukce(x,2)');
title(g3,'fukce(x,2)');
linkaxes([g1 g2 g3],'xy');

%4
figure(4)
[X Y]=meshgrid(-5:0.1:5,-6:0.2:6);
mesh(X,Y,fukce(X,Y))

