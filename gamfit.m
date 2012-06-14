function [ a,b ] = gamfit( x )
%GAMFIT fits a gamma distribution
% [ a,b ] = gamfit( x )
% %parameters a (shape) and b (scale)
%

n=length(x);
xbar=sum(x) ./ n;
% sbar=sum(x.^2) ./ n;
s=log(xbar)-sum(log(x))./n;
% method of moments
% a = xbar.^2 ./ (sbar-xbar.^2);
% b = (sbar-xbar.^2)./xbar;

% newtons method
a=(3-s+sqrt((s-3)^2+24*s))/(12*s);
for i=1:4
    a=a-(log(a)-psi(0,a)-s)./(1/a-psi(1,a));
end
b = xbar./a;

end

