function x=gamrnd(a,b)
%x=gamrnd(a,b)
%  generate gamma random variable with parameters a (shape) and b (scale)
%
%
% http://en.wikipedia.org/wiki/Gamma_distribution
% Ahrens, J. H. and Dieter, U. (1982). Generating gamma variates by a 
% modified rejection technique. Communications of the ACM, 25, 47–54. 
% Algorithm GD, p. 53
%
a_lower=floor(a);

if(a>=1)
    c1=sum(log(rand(a_lower,1)));
else
    c1=0;
end

a_frac=a-a_lower;
if(a_frac>0)
    V0=exp(1)/(exp(1)+a_frac);
    repeat=1;
    while repeat
        V=rand(3,1);
        if V(3) <= V0
            c2=V(2)^(1/a_frac); 
            eta=V(1)*c2^(a_frac-1); % step 4
        else
            %step 5
            c2=1-log(V(2));
            eta=V(1)*exp(-c2);
        end
        
        repeat= eta>c2^(a_frac-1)*exp(-c2);% step 6
    end 
else
    c2=0;
end

x=b*(c2-c1);