function t = backtrack(f,gradf,p,xo,alpha,beta)
    %p is descent direction
    gamma = gradf'*p;
    t = 1;
    while f(xo+t*p) > f(xo) + t*alpha*gamma
       t = beta*t; 
    end    
end