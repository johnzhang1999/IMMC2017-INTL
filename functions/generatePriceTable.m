%Generate a price matrix containing air fare between any two cities in the
%77-city database.
hwait=waitbar(0,'Waiting>>>>>>>>');
l=length(airId);
Price=zeros(l,l);
for r=1:l
    dep=char(airId(r));
    for c=1:l
        if r==c
            continue;
        end
        try
            progress=((r-1)*l+c)/(l*l);
            str=['Retriving Data...',num2str(progress*100),'%'];
            waitbar(progress,hwait,str);
            price=getPrice(dep,char(airId(c)),'2017-04');
            Price(r,c)=sum(price);
        catch err
        end
        disp(strcat(num2str(r),',',num2str(c),',',num2str(sum(price))))
    end
end
delete(hwait);