[null,cityName]=xlsread('citylist-final.xlsx');
airId=cell(length(cityName),1);
for i=1:length(cityName)
    try
        req=strcat('http://partners.api.skyscanner.net/apiservices/autosuggest/v1.0/CN/CNY/zh-CN?query=',char(cityName(i)),'&apiKey=jo854939349468501901817125982127');
        res=webread(req);
        name=res.Places(1).PlaceId;
        name=name(1:end-4);
        airId(i)=cellstr(name);
    catch err
    end
    disp(i)
end
disp(airId)