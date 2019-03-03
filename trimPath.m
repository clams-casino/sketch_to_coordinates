function trimmed_path = trimPath(paths,min_length)

    trimmed_path = {};
    
    for i = 1:size(paths,2)
        if size(paths{i},2) > min_length
            trimmed_path{end+1} = paths{i};
        end
    end
end