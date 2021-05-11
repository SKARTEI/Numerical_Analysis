function [fx,et,ea,iter] = compute_error(x,n,maxit)
% Maclaurin series of exponential function
% [fx,et,ea,iter] = compute_error(x,n,maxit)
% input:
% x = value at which series evaluated
% n = number of significant figures
% maxit = maximum iterations (default = 50)
% output:
% fx = estimated value
% et = true error
% ea = approximate relative error (%)
% iter = number of iterations
% defaults:
if nargin < 2|| isempty(n), n = 3; end
if nargin < 3|| isempty(maxit), maxit = 50;end
% initialization
iter = 1; sol = 1; ea = 100;

es = 0.50*10^(2-n); % es = stopping criterion 
true = exp(x);
% iterative calculation
while (1)
solold = sol;
sol = sol + x ^ iter / factorial(iter); %Eq. ***;  1+x+x^2/2 +x^3/3 +...+ x^n/n!
iter = iter + 1;
if sol ~= 0
et =  abs((true - sol)/true)*100;  %Eq. 1.4
ea = abs((sol - solold)/sol)*100;  %Eq  1.8
end
if ea <= es || iter >= maxit,break,end
end
fx = sol;
end