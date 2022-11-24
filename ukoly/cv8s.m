function  cv8s(g)
syms k;
sum_sym = vpa(symsum(g,1,inf));
disp(sum_sym)

k=1:50;
sum_num=vpa(sum(subs(g)));
disp(sum_num)


end