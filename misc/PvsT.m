a=@(x)getD1Perf(x);

T=1:24;
for i=1:24
    P(i)=a(i);
end
scatter(T,P)

axis equal
hold on

a=@(x)getD1Perf2(x);
T=1:24;
for i=1:24
    P(i)=a(i);
end
scatter(T,P)

a=@(x)getD1Perf3(x);
T=-3:20;
for i=-3:20
    P(i+4)=a(i);
end
scatter(T,P)