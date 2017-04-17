%Output the potential air fare and corresponding departure airport,
%given name of the departure location and the IATA code of the arrival
%airport and the date of flight of format 'YYYY-MM'.
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