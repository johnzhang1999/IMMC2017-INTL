function [price,depList] = calculatePrice(dep,arr,date)
[x,y]=getCoor(dep);
[depAir,depList]=getNearestAirport(x,y);
for i=1:length(depAir)
    try
        price(i)=getPrice(depAir(i).code,arr,date);
        break;
    catch err
    end
end