clear;clc;

f=@(x) atan((x+1)./(x-1));
g=@(x) x./(sqrt(x.^2-1));
h=@(x) x.^x;

syms x;
limit(f,x,Inf)
limit(f,x,-Inf)
limit(f,x,1,"right")
limit(f,x,1,"left")

limit(g,x,Inf)
limit(g,x,-Inf)
limit(g,x,1,"right")
limit(g,x,1,"left")

limit(h,x,Inf)
limit(h,x,-Inf)
limit(h,x,1,"right")
limit(h,x,1,"left")


x=[-10:0.01:(1-0.01),nan,1:00.1:10];
figure(1);
plot(x,f(x))
x=-10:0.01:10;
y=g(x);
y(imag(y)~=0)=nan;
saveas(gcf,'plot_1','epsc')
figure(2);
plot(x,y)
saveas(gcf,'plot_2','epsc')
figure(3);
plot(x,h(x))
saveas(gcf,'plot_3','epsc')