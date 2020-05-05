function gradient = get_gradient(f,xo,resolution)
    dimension = length(xo);
    gradient = zeros(dimension,1);
    for i = 1:dimension
        h = zeros(dimension,1);
        h(i) = resolution;
        df_di = five_point_diff(f,xo,h,resolution); 
        gradient(i) = df_di;
    end    
end