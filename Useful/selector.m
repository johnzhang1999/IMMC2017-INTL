%Generate a matrix:
%column: 77 cities from database arranged in regions.
%row: (downward) budget with increment of 100USD starting from the minimum
%budget in order to have at least three candidate cities.
%Matrix analysisTable contains zeros and ones representing whether this
%city at the current budget has been selected into first three or not. 
for b=1:80;
    %Because it's the only purpose of analysis of this part of code, codes
    %with behavior similar to others are omitted here.
    %Please refer to CitySelector.m to see the full behavior.
    first3=result(1:3,1);
    for i=1:3
        searchResult(i,:)=strcmp(cityName,char(first3(i)));
    end
    analysisTable(b,:)=sum(searchResult);
end