function showGridPath(paths,img)

    for i = 1:size(paths,2)
        canvas = zeros(size(img));
        curr_path = paths{i};
        
        for j = 1:size(curr_path,2)
            canvas(curr_path(1,j), curr_path(2,j)) = 1;
        end
        
        figure
        ttl = ['path ' num2str(i)];
        imshow(canvas)
        title(ttl)
    end

end