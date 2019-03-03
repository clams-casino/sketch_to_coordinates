function interp_coord = downsampleInterp(data, downsample_factor)

    assert(downsample_factor > 1, "downsample factor needs to be greater than 1")

    ti = linspace(0,1,length(data));
    tf = linspace(0,1, length(data) / downsample_factor);
    
    interp_coord = interp1(ti,data,tf,'pchip');
    
end