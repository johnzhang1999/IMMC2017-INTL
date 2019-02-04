l=length(cityCoor);
%cityTimeZone=zeros(l,1);
for i=55:l
    lat=cityCoor(i,1);
    lon=cityCoor(i,2);
    cityTimeZone(i,1)=getTimeZone(lat,lon);
end
disp(cityTimeZone)