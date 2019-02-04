function gmt = getTimeZone(lat,lon)
lat = num2str(lat);
lon = num2str(lon);
req = strcat('http://api.timezonedb.com/v2/get-time-zone?key=J1J7DMMJJKWU&format=json&by=position&lat=',lat,'&lng=',lon)
res = webread(req);
gmt = res.gmtOffset/3600;