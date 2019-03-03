% function assumes there is only 1 neighbour
function new_gridpoint = findSingleNeighbour(curr_row, curr_col, img)

    new_gridpoint = zeros(2,1);
    
    for i = -1:1
        for j = -1:1
            if img(curr_row+i, curr_col+j) == 1
                new_gridpoint(1) = curr_row + i;
                new_gridpoint(2) = curr_col + j;
                return
            end 
        end
    end
end