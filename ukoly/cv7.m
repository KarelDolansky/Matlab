clear;clc;
syms x;
syms y;
f=log(abs(cos(x)))+y*x*exp(-(x)^2);
g=subs(f,x,1/y);
g_3=vpa(subs(g,y,3));
int_g_1_2_sym=vpa(int(g,y,1,2),6);
int_f_dx=int(f,x);
sum((-5).^(1:10)./(1:10).^2);
syms k n;
sum_sym =symsum(sin(2*pi/3*k),k,1,n)
sum_num=sum(sin(2*pi/3*(1:40)));
sum_sym_n40=subs(sum_sym,n,(1:40))
limit(f,x,pi/2)
int_diff_f=int(f./y,x,0,+Inf);