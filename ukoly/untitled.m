a=0:pi/3:2*pi;
x=3*cos(a);
y=3*sin(a);
plot(x,y)
axis equal

clear;
x=1:5;y=1;
f(x,y)=x.*eulergamma^(-x.^2-y.^2)+tanh(x.*y);
plot(f)