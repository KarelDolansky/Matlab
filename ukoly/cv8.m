clear;clc;


%1
syms x k;
cv8i(1./(2+cos(x)),0,0.001,2*pi)
cv8i(x*atan(x),0,0.001,sqrt(3))
cv8i(sqrt(1-sin(2*x)),0,0.001,2*pi)
cv8i(exp(-(x^2)),-10,0.001,5)
cv8i(exp(-(x^2)),-10000,0.001,10000)


%2
cv8s((-1)^k*(1/2^(k-1)))
cv8s(1/(k*(k+1)))
cv8s((-1)^k*1/k)
cv8s((2*k-1)/2^k)

%3
syms a ;
m=[1,7,a;a^2,3,1-a;0,5,6];
figure(1)
fplot(det(m),[-10,10])
min_max = vpa(solve(diff(det(m))==0));
disp(min_max)

m2=[a,8,-3*a;1,(1-a)^2,a;3,-1,4];
figure(2)
fplot(det(m2),[-10,10])
min_max2 = vpa(solve(diff(det(m2))==0));
disp(min_max2)