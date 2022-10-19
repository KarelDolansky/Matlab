function Y = VecBubbleSort(X)
% Zde vlozte naprogramovanou funkci bublinkoveho razeni vektoru
% X - nesetridena vstupni matice
% Y - algoritmem setridena vystupni matice
for k=1:size(X,2)
    for x=1:(size(X,2)-1)
        for i=1:size(X,1)
            if(X(i,x))<(X(i,x+1))
                break;
            
            elseif(X(i,x))>(X(i,x+1))
                A=X(:,x);
                X(:,x)=X(:,x+1);
                X(:,x+1)=A;
                break;
            end
        end
    end
end
Y=X;
end