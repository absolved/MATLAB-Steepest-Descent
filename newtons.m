function [x_star,p_star,f_x,error] = newtons(f,xo,alpha,beta,epsilon,resolution)
    H = get_hessian(f,xo,resolution);
    gradf = get_gradient(f,xo,resolution);
    p = H\-gradf;
    error = norm(gradf);
    f_x = f(xo);
    while error(end) > epsilon
       t = backtrack(f,gradf,p,xo,alpha,beta);
       xo = xo + t*p;
       f_x = [f_x;f(xo)];
       H = get_hessian(f,xo,resolution);
       gradf = get_gradient(f,xo,resolution);
       error = [error ;norm(gradf)];
       p = H\-gradf;     
    end
    x_star = xo;
    p_star = f_x(end);
end