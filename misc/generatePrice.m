l=length(airId);
%Price=cell(l,l);
%Price=zeros(l,l);
for r=9:l
    for c=1:l
        if r==c
            continue;
        end
        try
            price=calculatePrice(char(cityName(r)),char(airId(c)),'2017-04');
            Price(r,c)=sum(price);
        catch err
        end
        disp(strcat(num2str(r),',',num2str(c),',',num2str(sum(price))))
    end
end