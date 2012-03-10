   x=[
        -3 
        -1 
        0.0 
        0.5 
        2.1 
    ];

 y=[
     -0.999977909503 
        -0.842700792950 
        0.0
        0.520499877813
        0.997020533344 
    ];


y2=erf(x);

y2-y


t=[-3:0.1:3];

F=normcdf(t,0,1);
t2=norminv(F);
plot(F)

error=max(t-t2);
disp(sprintf('max error:%d',error))
