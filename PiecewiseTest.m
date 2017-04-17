f1=@(x)(-x).*(x<0)+(x).*(x>=0);
f2=@(x)(x+1).*(x<0)+(-x+1).*(x>=0);
f3=@(x)((-x).*(x<0)+(x).*(x>=0))-((x+1).*(x<0)+(-x+1).*(x>=0));

x=-3:0.1:3;
y1=f1(x);
y2=f2(x);
%y3=f3(x);

plot(x,y1);
hold on;
plot(x,y2);
%plot(x,y3);

axis equal

xi=-1;
dx=0.1;
xf=1;
for k=x0:dx:xf
    i=round((k-x0)/dx)+1;
    icpt(i)=fsolve(f3,k);
end
icpt=unique(icpt)

s=quad(f2,xi,icpt(1))+quad(f1,icpt(1),icpt(2))+quad(f2,icpt(2),xf)