Prostudujte kód níže uvedené funkce cipher_for a poté její kód upravte tak, aby neobsahoval žádné cykly for / while. Výsledek využijte k úpravě funkce cipher_task.
Požadavky na vytvořenou funkci cipher_task:
Nepoužívat cykly for / while.
Funkce musí šifrovat libovolný text s libovolným klíčem (za předpokladu kratšího klíče než šifrovaného textu: ).
Šifrovaný text je řádkovým vektorem typu char.
V případě nutnosti doplnění textu, použijte znak mezery (př. padding = ' '  nebo  padding = char(32) nebo padding = char(0) ).  

function cipher = cipher_for(text,key)

    keyNums = double(key);
    keySorted = zeros(1, length(key));
    [c cisla] = sort(keyNums);
    
    for i = 1:length(c)
        for j = 1:length(c)
            if c(i) == keyNums(j) && keySorted(j) == 0
                keySorted(j) = i; %zjistí pořádí přiřadí 1:idk podle velikosti
                break;
            end
        end
    end
    
    k = 1;
    l = 1;
    for i = 1:size(text, 2) %zmenšení textu na matici velikost řádku podle velikosti key
        M(k, l) = text(i);
        l = l + 1;
        if mod(i, length(key)) == 0
            k = k+1;
            l = 1;
        end
    end
    
    for i=1:length(keySorted)
        for j = 1:length(keySorted)
            if i == keySorted(j)
                cipher{i} = M(:,j)';%na první místo 1 sortkey kuloží na stejnou pozici řádek textu
            end
        end
        
    end
    
    cipher = strjoin(cipher, '');

end

padding()