function gamrndtest

N=1000;

p=[0.5 2;1 2; 1.5 2; 2 2;2.5 2;3 2;3.5 3];

x=zeros(N,size(p,1));
for i=1:size(p,1)
    a=p(i,1);
    b=p(i,2);
    for n=1:N
        x(n,i)=gamrnd(a,b);
    end
end
hist(x)
 any(isnan(x))       