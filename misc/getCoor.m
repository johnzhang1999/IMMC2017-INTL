function [lat,lon] = getCoor(city)
%Google Geocoding API
%req = strcat('https://maps.googleapis.com/maps/api/geocode/json?address=',city,'&key=AIzaSyCU9ICU3_2GI1ClRYWgTivPhpIC3-I9E4c');
%Data Science Toolkit API
%req = strcat('http://www.datasciencetoolkit.org/maps/api/geocode/json?sensor=false&address=',city)
%MapQuest API

req = strcat('http://www.mapquestapi.com/geocoding/v1/address?key=Cl4tM9Qbldsgs6SGWu9GJldpGY8VjKSu&location=',city)
res = webread(req);

%Google & DST
% lat = res.results.geometry.location.lat;
% lon = res.results.geometry.location.lng;

%MapQuest
lat=res.results.locations(1).latLng.lat;
lon=res.results.locations(1).latLng.lng;
