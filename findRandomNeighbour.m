% assumes there are multiple neighbours
function new_gridpoint = findRandomNeighbour(curr_row, curr_col, img)

    new_gridpoint = zeros(2,1);

    neighbours = [];
    for i = -1:1
        for j = -1:1
            if img(curr_row+i, curr_col+j) == 1
                neighbours = [neighbours [curr_row+i ; curr_col+j]];
            end 
        end
    end
    
    random_index = randi([1 size(neighbours,2)]);
    
    new_gridpoint(1) = neighbours(1,random_index);
    new_gridpoint(2) = neighbours(2,random_index);
    
end