%Generate a distance matrix containing distances between every two cities
%in the 77-city database.
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
            distance=distance(Rx,Ry,Cx,Cy);
            Distance(r,c)=distance;
        catch err
        end
        disp(strcat(num2str(r),',',num2str(c),',',num2str(distance)))
    end
end
%Complete the matrix
Distance=Distance+Distance';