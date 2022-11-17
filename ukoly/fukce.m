function la = fukce(x,y)
if nargin==1
    y=0;
end

la=x.*exp(1).^(-x.^2-y.^2) + tanh(x.*y);
end

