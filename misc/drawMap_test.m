% h = worldmap('World');
% getm(h,'MapProjection')
% geoshow('landareas.shp','FaceColor', [0.15 0.5 0.15])
% geoshow('worldlakes.shp', 'FaceColor', 'green')
% geoshow('worldrivers.shp','Color', 'blue')
% geoshow('worldcities.shp', 'Marker', '.','Color', 'red')
% labelLat= 165;
% labelLon= 30;
% %textm(labelLat,labelLon, 'Ì«Æ½Ñó','color','r');
% textm(30,160,'Pacific','color','r');
% 
% samplefactor = 15;
% [Z, refvec] = etopo('ETOPO5.DAT', samplefactor);
% figure
% worldmap world
% geoshow(Z, refvec, 'DisplayType', 'texturemap');
% demcmap(Z, 256);
% geoshow('landareas.shp', 'FaceColor', 'none', ...
%    'EdgeColor', 'black');

h=worldmap('World');
geoshow('landareas.shp','FaceColor', 'yellow');
plotm(bndry_lat,bndry_lon);