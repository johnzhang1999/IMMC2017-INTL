hwait=waitbar(0,'请等待>>>>>>>>');
l=length(airId);
Price=zeros(l,l);
for r=1:l
    dep=char(airId(r));
    for c=1:l
        if r==c
            continue;
        end
        try
            %coor=cityCoor(r,:)
            %x=coor(1);y=coor(2);
            
            progress=((r-1)*l+c)/(l*l);
            str=['正在计算中',num2str(progress*100),'%'];
            waitbar(progress,hwait,str);
        
            price=getPrice(dep,char(airId(c)),'2017-06');
            Price(r,c)=sum(price);
        catch err
        end
        disp(strcat(num2str(r),',',num2str(c),',',num2str(sum(price))))
    end
end
delete(hwait);