close all
clearvars -except grid_paths


min_length_px = 20;
x_scale = 300;
downsample_factor = 5;
x_offset = 0;
y_offset = 0;
z_move = 40;
z_draw = -1;

load('grid_paths\doraemon_paths.mat')
load('images\doraemon.mat')

coord_paths = toCoordinates(grid_paths,img,x_scale);

for i = 1:size(coord_paths,2) 
    x_interp = downsampleInterp(coord_paths{i}(1,:),downsample_factor);
    y_interp = downsampleInterp(coord_paths{i}(2,:),downsample_factor);
    coord_paths{i} = [x_interp ; y_interp];
end

trajectory = stitchPath(coord_paths,x_offset,y_offset,z_move,z_draw);

scatter3(trajectory(1,:),trajectory(2,:),trajectory(3,:),5)
axis equal
