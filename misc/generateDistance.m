l=length(airId);
Distance=zeros(l,l);
for r=1:l
    Rcoor=cityCoor(r,:)
    Rx=Rcoor(1);Ry=Rcoor(2);
    for c=r:l
        if r==c
            continue;
        end
        try
            Ccoor=cityCoor(c,:)
            Cx=Ccoor(1);Cy=Ccoor(2);
            distance=greatCircleDistance(Rx,Ry,Cx,Cy);
            Distance(r,c)=distance;
        catch err
        end
        disp(strcat(num2str(r),',',num2str(c),',',num2str(distance)))
    end
end
Distance=Distance+Distance';