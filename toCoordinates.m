function path_coordinates = toCoordinates(paths, img, x_length)

    x_px = size(img,2);
    S = x_length / x_px;
    
    path_coordinates = {};
    
    for path = 1:size(paths,2)
        
        path_coord = [];
        
        for i = 1:size(paths{path},2)
            
            x = (paths{path}(2,i) - 0.5) * S;
            y = (size(img,1) - paths{path}(1,i) + 0.5) * S;
            path_coord = [path_coord [x ; y]];
        
        end
        
        path_coordinates{end+1} = path_coord;
        
    end
    
end


