%checks returns true if the entire binary image is empty (black)
function r = binaryEmpty(img)
    r = 1;
    for i = 1:size(img,1)
        for j = 1:size(img,2)
            if img(i,j) == 1
                r = 0;
                return
            end
        end
    end
end

