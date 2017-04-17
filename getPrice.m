function p = getPrice(dep,arr,date)%ex:2017-04
req = strcat('http://partners.api.skyscanner.net/apiservices/browsequotes/v1.0/US/USD/en-US/',dep,'-sky/',arr,'-sky/',date,'?apiKey=jo854939349468501901817125982127')
res = webread(req);
MinPrice = [res.Quotes.MinPrice].';
Q1=prctile(MinPrice,25);
Q3=prctile(MinPrice,75);
MinPrice=MinPrice(find(MinPrice>Q1&MinPrice<Q3));
p = mean(MinPrice);
