function heatmapRent(testRegressor, params)
lat = linspace(50.200, 51.800, 900)';
long = linspace(-0.200, 0.800, 900)';
[LAT,LON] = meshgrid(lat,long);
rent = testRegressor([reshape(LAT, 900^2, 1),reshape(LON, 900^2, 1)], params);
% colormap('hot');
% imagesc(reshape(rent, 30, 30));
% set(gca, 'XTick', linspace(1,900), 'XTickLabel', lat)
% set(gca, 'YTick', linspace(1,900), 'YTickLabel', long)
% xlabel('Latitude')
% ylabel('Longtitude')
rent = reshape(rent, 900, 900);
surf(LON,LAT,rent)

colormap('jet');
surf(LON,LAT,rent);
shading interp
view
xlabel('Longitude [^\circ]')
ylabel('Latitude [^\circ]')
view(0,90)
hcb=colorbar
title(hcb,'PCM [�]')
end