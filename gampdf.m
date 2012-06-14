function [ y ] = gampdf( x,a,b )
%GAMPDF computes the density function for a gamma distribution for
%parameters a (shape) and b (scale)

y=1./gamma(a)./b.^(a).*x.^(a-1).*exp(-x./b);

end

