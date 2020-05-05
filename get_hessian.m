function H = get_hessian(f,xo,resolution)
    dimension = length(xo);
    H = zeros(dimension);

    gradient = zeros(dimension,1);
    for i = 1:dimension
        hi = zeros(dimension,1);
        hi(i) = resolution;
        df_di = five_point_diff(f,xo,hi,i); 
        gradient(i) = df_di;
        for j = 1:dimension
            hj = zeros(dimension,1);
            hj(j) = resolution;
            g_iplus = five_point_diff(f,xo+hj,hi,resolution);
            g_iminus = five_point_diff(f,xo-hj,hi,resolution);
            g_jplus = five_point_diff(f,xo+hi,hj,resolution);
            g_jminus = five_point_diff(f,xo-hi,hj,resolution);
            
            d2f_didj = ( (g_iplus - g_iminus) / (4*hj(j)) ) + ( (g_jplus - g_jminus) / (4*hi(i)) );
            H(i,j) = d2f_didj;       
    end 
end