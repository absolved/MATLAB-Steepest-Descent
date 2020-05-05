function df_dx = five_point_diff(f,xo,h,resolution) %assuming 0 < h(i) < 1 and h(i)= resolution
    df_dx = (-f(xo+2*h)+8*f(xo+h)-8*f(xo-h)+f(xo-2*h)) / (12*resolution);
end