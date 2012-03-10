function [x] = norminv(p,mu,sigma)
% returns inverse cdf for a normal distribution
% p: cdf value in (0,1)
% mu : mean
% sigma : standard deviation
%
%  returns nan if outside domain
p(p <= 0 | 1 <= p) = nan;

z = -sqrt(2).*erfcinv(2*p);
x = sigma.*z + mu;

