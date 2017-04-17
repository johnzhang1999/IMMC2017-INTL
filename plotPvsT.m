function [Tadj,Padj] = plotPvsT
a=@(x)getD1Perf(x);
tot=a(0);

T=1:24;
for i=1:24
    P(i)=a(i);
end
P=P/tot*100
scatter(T,P)

axis equal
hold on

a=@(x)getD1Perf2(x);
T=1:24;
for i=1:24
    
    P(i)=a(i);
end
P=P/tot*100
scatter(T,P)

a=@(x)getD1Perf3(x);
T=-3:20;
for i=-3:20
    P(i+4)=a(i);
end
P=P/tot*100
scatter(T,P)

Tadj=1:24;
Padj(1:20)=P(5:24);Padj(21:24)=P(1:4);