function trajectory = stitchPath(coord_path, x_offset, y_offset, z_move, z_draw)

    trajectory = [];
    for path = 1:size(coord_path,2)  
        trajectory = [trajectory [coord_path{path}(:,1) + [x_offset ; y_offset] ; z_move]];
        
        for col = 1:size(coord_path{path},2)    
            trajectory = [trajectory [coord_path{path}(:,col) + [x_offset ; y_offset] ; z_draw]];
        end
        
        trajectory = [trajectory [coord_path{path}(:,end) + [x_offset ; y_offset] ; z_move]];
        
    end    
end