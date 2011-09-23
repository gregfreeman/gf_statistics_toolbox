function x=normrnd(mu,sigma)
z=randn(size(mu));
x=mu+sigma.*z;