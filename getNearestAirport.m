function [code,o] = getNearestAirport(lat,lon)
lat = num2str(lat);
lon = num2str(lon);
req = strcat('https://iatacodes.org/api/v6/nearby?api_key=3c5351ff-813d-4f91-aeeb-2f8ff3ac825f&lat=',lat,'&lng=',lon,'&distance=100')
res = webread(req);
o=res.response(1:length(res.response));
for i=length(o):-1:1
    if ~isempty([strfind(o(i).name,'Railway'),strfind(o(i).name,'Station'),strfind(o(i).name,'Port')])
        o(i)=[];
    end
end
code = struct('code', {o(1:length(o)).code});