function [x_star,p_star,f_x,error] = steepest_descent(f,xo,alpha,beta,epsilon,resolution)
    % f is a function
    % xo initial point
    % alpha, beta are backtracking parameters
    % epsilon is error tolerance
    %resolution is deltax size for numerical differentiation
    % returns optimal x*
    p = -get_gradient(f,xo,resolution);
    f_x = f(xo);
    error = norm(p);
    while error > epsilon
        t = backtrack(f,-p,p,xo,alpha,beta);
        xo = xo + t*p;
        f_x = [f_x; f(xo)];
        p = -get_gradient(f,xo,resolution);
        error = [error;norm(p)];
    end
    x_star = xo;
    p_star = f_x(end);
end    