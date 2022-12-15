clear,clc

figure
% add your own matlab code here:
% plot four different figures on one graph by using the subplot function: 

% =========================================================================
% subplot 1: plot a cylinder, the graph function is provided, you just have
% to add the subplot command by replacing the following line: 

% replace this line with your own code
cylinder
% add a title to this figure by replacing this line
% =========================================================================

% =========================================================================
% subplot 2: plot a sphere, the graph function is provided, you just have
% to add the subplot command by replacing the following line: 

% replace this line with your own code
sphere
% add a title to this figure by replacing this line
% =========================================================================

% =========================================================================
% subplot 3: plot a ellipsoid, the graph function is provided, you just have
% to add the subplot command by replacing the following line: 

% replace this line with your own code
ellipsoid(0,0,0,5.9,3.25,3.25,30)
% add a title to this figure by replacing this line
% =========================================================================

% =========================================================================
% subplot 4: plot a map, the graph function is provided, you just have
% to add the subplot command by replacing the following line: 

% replace this line with your own code
worldmap('antarctica')
antarctica = shaperead('landareas', 'UseGeoCoords', true,...
  'Selector',{@(name) strcmp(name,'Antarctica'), 'Name'});
patchm(antarctica.Lat, antarctica.Lon, [0.5 1 0.5])
% add a title to this figure by replacing this line
% =========================================================================
