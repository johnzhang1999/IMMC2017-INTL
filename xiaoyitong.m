[null,peopName]=xlsread('peoplist.xlsx');

l=length(peopName);

peopCoor=zeros(l,2);
peopTimeZone=zeros(l,1);
%peopAirId=cell(l,1);

for i=1:l
    result=strcmp(cityName,char(peopName(i)));
    if sum(result)~=0
        %peopAirId(i)=cellstr(peopName(result));
        peopCoor(i,1)=cityCoor(result,1);
        peopCoor(i,2)=cityCoor(result,2);
        peopTimeZone(i)=cityTimeZone(result);
    else
        try
            [x,y]=getCoor(char(peopName(i)));
            peopCoor(i,1)=x;
            peopCoor(i,2)=y;
            peopTimeZone(i)=getTimeZone(x,y);
            %peopAirId(i)=getNearestAirport();
        catch err
        end
    end
end

budget=13000;
L=length(cityName);
P=[0.9005608464302958,0.8367423804991914,0.7890108461156795,0.7456944416744423,0.7004560629381782,0.6506367514096876,0.5961206794439693,0.5385102640448087,0.5035437110135517,0.4710781234051797,0.44253506821401933,0.4218361448959889,0.4122667403046987,0.4162373882345549,0.43511030863881023,0.4691039029658156,0.5172820940502202,0.5776290074332268,0.6472030852209465,0.7223587922671959,0.7990190675955129,0.8729779681897424,0.9402108220275376,0.997168804108945];
cityMark=zeros(L,1);
t_rest_m=zeros(L,1);
for j=1:1 %%我改了这个！！！记得改回来！！！
    lat=cityCoor(j,1)
    lon=cityCoor(j,2)
    hotel=cityHotel(j)
    delta_n=round(abs(peopTimeZone-cityTimeZone(j)));
    delta_n(delta_n==0)=24
    dis=zeros(1,l);
    for k=1:l
        dis(k)=greatCircleDistance(peopCoor(k,1),peopCoor(k,2),lat,lon)
    end
    fare=sum(dis)*1.609*0.11+50 %conversion from km to mile
    t_rest=(budget-fare)/(l*hotel)-3;
    
    t_rest_m(j)=t_rest;
    
    
    t_flight=dis/900
    fatigue=1-0.14*sqrt(t_flight)
    
    for people=1:l;
        peopDay1=P(delta_n(people))*fatigue
    end
    
    Perf=@(t)1-(1-peopDay1)*exp(-0.304*t);
    peopPerf=Perf(t_rest+1)+Perf(t_rest+2)+Perf(t_rest+3)
    totPerf=sum(peopPerf)
    cityMark(j)=totPerf
end
%disp(cityMark)
disp(t_rest_m)