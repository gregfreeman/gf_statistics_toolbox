function x=gamrnd(a,b)

a_lower=floor(a);

if(a>=1)
    c1=sum(log(rand(a_lower,1)));
else
    c1=0;
end

a_frac=a-a_lower;
if(a_frac>0)
    V0=exp(1)/(exp(1)-a_frac);
    repeat=1;
    while repeat
        V=rand(3,1);
        if V(3) <= V0
            c2=1-log(V(2));
            eta=V(1)*c2^(a_frac-1);
        else
            c2=V(2)^(1/a_frac);
            eta=V(1)*c2^(-c2);
        end
        
        repeat= eta>c2^(a_frac-1)*exp(-c2);
    end 
else
    c2=0;
end

x=b*(c2-c1);