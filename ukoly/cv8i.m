function  cv8i(g,min,krok,max)
syms x
f(x)=g;
int_sym_1 = vpa(int(f,x,min,max));

x=min:krok:max-krok;
f_num = matlabFunction(f);
int_num_1 = sum(f_num(x+krok/2)*krok);
disp(double(int_sym_1))
disp(int_num_1)


end