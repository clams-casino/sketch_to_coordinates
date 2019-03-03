function result = hasNeighbours(curr_row, curr_col, img)

    kernel = [1 1 1; 1 0 1; 1 1 1];
    tmp = kernel.*img(curr_row-1:curr_row+1,curr_col-1:curr_col+1); 
    result = sum(sum(tmp));
    
end