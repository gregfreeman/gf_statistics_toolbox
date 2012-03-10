%function p=normcdf(x,mu,sigma)
% returns cdf for a normal distribution
% x : value
% mu : mean
% sigma : standard deviation
%
function p=normcdf(x,mu,sigma)
z = (x-mu) ./ sigma;
p = 0.5 * erfc(-z ./ sqrt(2));
