function cipher = cipher_task(text,key)

    keyNums = double(key);
    [c cisla] = sort(keyNums,'ascend');
    
    
    text = pad(text,ceil(length(text)/length(cisla))*length(cisla));
    text = reshape(text,length(cisla),[])';
    cipher{:}=text(:,cisla);    
    cipher = convertCharsToStrings(cipher);

end