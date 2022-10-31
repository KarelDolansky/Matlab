function cipher = mozno(text,key)

    keyNums = double(key);
    keySorted = zeros(1, length(key));
    [c cisla] = sort(keyNums);
    

    reshape(text,lenght(key),ceil(length(text)/lenght(key)))
    

    
    
    for i=1:length(cisla)
        for j = 1:length(cisla)
            if i == cisla
                cipher{i} = M(:,j)';%na první místo 1 sortkey kuloží na stejnou pozici řádek textu
            end
        end
        
    end
    
    cipher = strjoin(cipher, '');

end