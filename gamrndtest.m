function gamrndtest

N=1000;

p=[0.5 2;1 2; 1.5 2; 2 2;2.5 2;3 2;3.5 3];
phat=zeros(size(p));
% phat2=zeros(size(p));
x=zeros(N,size(p,1));
for i=1:size(p,1)
    a=p(i,1);
    b=p(i,2);
    for n=1:N
        x(n,i)=gamrnd(a,b);
    end
    [phat(i,1),phat(i,2)]=gamfit(x(:,i));
%     phat2(i,:)=stats/gamfit(x(:,i));
    figure(1)
    hist(x(:,i),20)
    hold on
    t=1:0.25:10;    
    plot(t,N*gampdf(t,p(i,1),p(i,2)),'g')
    plot(t,N*gampdf(t,phat(i,1),phat(i,2)),'r')
    hold off
    
end
figure(2)
hist(x,20)
any(isnan(x))      
p
phat


