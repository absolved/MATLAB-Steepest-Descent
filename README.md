# MATLAB-Steepest-Descent
Implements steepest descent and Newton's method for minimizing an arbitrary function in MATLAB.

Uses function handle and initial point as input.

'steepest_descent.m' uses the steepest descent algorithm to minimize f(x) where x is a vector.
'newtons.m' uses Newton's method to minimize f(x) where x is a vector.
'backtrack.m' backtracking line search algorithm - subroutine in both steepest descent and Newton's method.
'get_gradient.m' calculates the gradient of a function f at the point xo.
'get_hessian.m' calculates the hessian matrix of a function f at the point xo.
'five_point_diff' estimates the derivative of a function using a 5 point finite difference.


