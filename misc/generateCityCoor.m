l=length(cityName);
cityCoor=zeros(l,2);
req = 'http://www.mapquestapi.com/geocoding/v1/batch?key=Cl4tM9Qbldsgs6SGWu9GJldpGY8VjKSu';
for i=1:l
    req=strcat(req,'&location=',char(cityName(i)));
end
res=webread(req);
for i=1:l
    cityCoor(i,1)=res.results(i).locations(1).latLng.lat;
    cityCoor(i,2)=res.results(i).locations(1).latLng.lng;
end
disp(cityCoor)