function varargout = CitySelector(varargin)
% CITYSELECTOR MATLAB code for CitySelector.fig
%      CITYSELECTOR, by itself, creates a new CITYSELECTOR or raises the existing
%      singleton*.
%
%      H = CITYSELECTOR returns the handle to a new CITYSELECTOR or the handle to
%      the existing singleton*.
%
%      CITYSELECTOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CITYSELECTOR.M with the given input arguments.
%
%      CITYSELECTOR('Property','Value',...) creates a new CITYSELECTOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before CitySelector_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to CitySelector_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help CitySelector

% Last Modified by GUIDE v2.5 04-Apr-2017 16:05:48

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @CitySelector_OpeningFcn, ...
                   'gui_OutputFcn',  @CitySelector_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before CitySelector is made visible.
function CitySelector_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to CitySelector (see VARARGIN)

% Choose default command line output for CitySelector
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
axes(handles.axes2);
imshow('IMMC.jpg');

% UIWAIT makes CitySelector wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = CitySelector_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

budget=str2double(get(handles.budget,'String'));
global file;

hwait=waitbar(0,'请等待>>>>>>>>');

cityName={'Vienna';'Brussels';'Prague';'Copenhagen';'Paris';'Nice';'Berlin';'Munich';'Frankfurt am Main';'Athens';'Budapest';'Dublin';'Rome';'Venice';'Milan';'Florence';'Naples';'Amsterdam';'Krakow';'Warsaw';'Lisbon';'Moscow';'Barcelona';'Madrid';'Valencia';'London';'Siem Reap';'Hong Kong';'Shanghai';'Beijing';'Taipei';'Guangzhou';'Shenzhen';'Macau';'Mumbai';'New Delhi';'Jakarta';'Tel Aviv';'Tokyo';'Kyoto';'Osaka';'Kuala Lumpur';'Manila';'Singapore';'Seoul';'Pattaya';'Bangkok';'Phuket';'Krabi';'Chiang Mai';'Istanbul';'Dubai';'Ho Chi Minh City';'Hanoi';'New York';'Las Vegas';'San Francisco';'Orlando';'Miami';'Chicago';'Boston';'Washington DC';'Los Angeles';'Honolulu';'Playa del Carmen';'Mexico City';'Cancun';'Santiago';'Vancouver';'Toronto';'Rio de Janeiro';'Buenos Aires';'Sydney';'Melbourne';'Auckland';'Marrakech';'Cape Town'};
cityCoor=[48.1923090000000,16.3713640000000;50.8385340000000,4.37543400000000;50.0874400000000,14.4212560000000;55.6867240000000,12.5700690000000;48.8565060000000,2.35213300000000;43.7009360000000,7.26839100000000;52.5170370000000,13.3888600000000;48.1364100000000,11.5775300000000;50.1106530000000,8.68209300000000;37.9841490000000,23.7279840000000;47.4983820000000,19.0404710000000;53.3493070000000,-6.26117500000000;41.8933440000000,12.4830720000000;45.4371910000000,12.3345900000000;45.4667970000000,9.19049800000000;43.7698710000000,11.2555760000000;40.8441160000000,14.2423000000000;52.3710090000000,4.90011200000000;50.0619470000000,19.9368560000000;52.2333000000000,21.0166000000000;38.7130570000000,-9.13800600000000;55.7516340000000,37.6187040000000;41.3825600000000,2.17713500000000;40.4167050000000,-3.70358300000000;39.4666000000000,0.375000000000000;51.5072760000000,-0.127660000000000;13.3828500000000,103.992885000000;22.2644120000000,114.167061000000;31.2253440000000,121.488892000000;39.9064700000000,116.391195000000;25.0376380000000,121.564459000000;23.1300040000000,113.259001000000;22.5442670000000,114.054533000000;22.1919510000000,113.538122000000;18.9523800000000,72.8327110000000;28.6138970000000,77.2159560000000;-6.18101500000000,106.828335000000;32.0804810000000,34.7805270000000;35.6800710000000,139.768522000000;35.0185800000000,135.763835000000;34.6852930000000,135.514694000000;3.15709800000000,101.700953000000;14.5906070000000,120.979901000000;1.29045300000000,103.852038000000;37.5666010000000,127;12.9318590000000,100.900691000000;13.7527530000000,100.494086000000;7.71598400000000,98.3221260000000;7.84138800000000,98.9873920000000;18.6974950000000,98.6177120000000;41.0170580000000,28.9855680000000;25.2683520000000,55.2961960000000;10.7827450000000,106.694898000000;21.0292100000000,105.852470000000;40.7130540000000,-74.0072280000000;36.1692020000000,-115.140597000000;37.7800800000000,-122.420168000000;28.5383310000000,-81.3788790000000;25.7750840000000,-80.1947020000000;41.8832290000000,-87.6323980000000;42.3588940000000,-71.0567420000000;38.8920620000000,-77.0199120000000;34.0522380000000,-118.243344000000;21.3099200000000,-157.858158000000;20.6282230000000,-87.0756580000000;19.4325300000000,-99.1332100000000;21.1708910000000,-86.8403170000000;-33.4379130000000,-70.6504560000000;49.2635660000000,-123.138572000000;43.6518930000000,-79.3817130000000;-22.9110140000000,-43.2093730000000;-34.6128690000000,-58.4459790000000;-33.8548160000000,151.216454000000;-37.8142550000000,144.963146000000;-36.5412810000000,174.550609000000;31.6259900000000,-7.98860800000000;-33.9289050000000,18.4172490000000];
cityTimeZone=[2;2;2;2;2;2;2;2;2;3;2;1;2;2;2;2;2;2;2;2;1;3;2;2;2;1;7;8;8;8;8;8;8;8;5.50000000000000;5.50000000000000;7;3;9;9;9;8;8;8;9;7;7;7;7;7;3;4;7;7;-4;-7;-7;-4;-4;-5;-4;-4;-7;-10;-5;-5;-5;-3;-7;-4;-3;-3;10;10;12;1;2];
cityHotel=[126.840000000000;100.360000000000;108.650000000000;173.240000000000;156.190000000000;136.680000000000;114.050000000000;151.980000000000;136.230000000000;117.930000000000;100.380000000000;156.760000000000;133.580000000000;175.140000000000;152.950000000000;145.980000000000;95.0100000000000;162.900000000000;77.3000000000000;83.6400000000000;120.510000000000;112.850000000000;154.100000000000;121.450000000000;94.1800000000000;192.520000000000;56.1800000000000;146.740000000000;141.100000000000;117.350000000000;112.780000000000;125.980000000000;120.640000000000;168.740000000000;143.570000000000;104.720000000000;87.0400000000000;182.630000000000;155.880000000000;162.240000000000;135.910000000000;72.3800000000000;69.4800000000000;152.320000000000;107.430000000000;45.0800000000000;73.9100000000000;84.2400000000000;83.6400000000000;51.2500000000000;75.7400000000000;171.950000000000;71.5500000000000;54.6900000000000;200.950000000000;133.710000000000;213.040000000000;120.250000000000;189.520000000000;196.930000000000;251.160000000000;201.570000000000;177.020000000000;231.110000000000;212.100000000000;109.810000000000;222.540000000000;113;171.980000000000;146.520000000000;128.560000000000;108.620000000000;158.210000000000;125.190000000000;124.540000000000;93.9000000000000;144.880000000000];

[null,peopName]=xlsread(file);

l=length(peopName);

peopCoor=zeros(l,2);
peopTimeZone=zeros(l,1);
%peopAirId=cell(l,1);



            
for i=1:l
    str=['正在获取参会者信息',num2str(i/l*40),'%'];
    waitbar(i/l*0.4,hwait,str);
    
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


L=length(cityName);
P=[0.9005608464302958,0.8367423804991914,0.7890108461156795,0.7456944416744423,0.7004560629381782,0.6506367514096876,0.5961206794439693,0.5385102640448087,0.5035437110135517,0.4710781234051797,0.44253506821401933,0.4218361448959889,0.4122667403046987,0.4162373882345549,0.43511030863881023,0.4691039029658156,0.5172820940502202,0.5776290074332268,0.6472030852209465,0.7223587922671959,0.7990190675955129,0.8729779681897424,0.9402108220275376,0.997168804108945];
cityMark=zeros(L,1);
t_rest_m=zeros(L,1);
fare_m=zeros(L,1);
for j=1:L
    str=['正在筛选城市',num2str(j/L*20+40),'%'];
    waitbar(j/L*0.2+0.4,hwait,str);
    
    lat=cityCoor(j,1);
    lon=cityCoor(j,2);
    hotel=cityHotel(j);
    delta_n=round(abs(peopTimeZone-cityTimeZone(j)));
    delta_n(delta_n==0)=24;
    dis=zeros(1,l);
    for k=1:l
        dis(k)=deg2km(distance(peopCoor(k,1),peopCoor(k,2),lat,lon)); %%%%%%%
    end
    
    fare=sum(dis)/1.609*0.11+50*l; %conversion from km to mile
    
    fare_m(j)=fare;
    
    t_rest=(budget-fare)/(l*hotel)-3;
    t_rest=round(t_rest);
    
    if t_rest<0
        cityName(j)=strcat(cityName(j),'(x)');
    end
    
    t_rest_m(j)=t_rest;
    
    
    t_flight=dis/900;
    fatigue=1-0.14*sqrt(t_flight);
    
    for people=1:l;
        peopDay1(people)=P(delta_n(people))*fatigue(people); %%!
    end
    
    Perf=@(t)1-(1-peopDay1)*exp(-0.304*t);
    peopPerf=Perf(t_rest+1)+Perf(t_rest+2)+Perf(t_rest+3); %%1.round  2.t+1?
    totPerf=sum(peopPerf);
    cityMark(j)=totPerf;
end
cityMark=cityMark/max(cityMark)*100;
disp(cityMark)
disp(t_rest_m)
disp(fare_m)

str=['正在生成结果','70','%'];
waitbar(0.7,hwait,str);

fare_mCell=num2cell(fare_m);
cityHotelCell=num2cell(cityHotel);
t_rest_mCell=num2cell(t_rest_m);
cityMarkCell=num2cell(cityMark);
cityCoorCell=num2cell(cityCoor);
result=[cityName,cityCoorCell,fare_mCell,cityHotelCell,t_rest_mCell,cityMarkCell];
result=sortrows(result,-7);
global Gresult; Gresult=result
%xlswrite('temp.xlsx',result,'A2:D78');

set(handles.C1N,'String',char(result(1,1)));
set(handles.C2N,'String',char(result(2,1)));
set(handles.C3N,'String',char(result(3,1)));
set(handles.C1S,'String',num2str(result{1,7}));
set(handles.C2S,'String',num2str(result{2,7}));
set(handles.C3S,'String',num2str(result{3,7}));

str=['正在绘制地图','90','%'];
waitbar(0.9,hwait,str);
delete(hwait);

axes(handles.mapaxes);
h=worldmap('World');
geoshow('landareas.shp','FaceColor', 'yellow');
for k=1:l
    plotm(peopCoor(k,1),peopCoor(k,2),'Marker', '.','MarkerSize',20,'Color', 'blue');
end
textm(peopCoor(:,1),peopCoor(:,2)+5,peopName);

for k=1:3
    plotm(cell2mat(result(k,2)),cell2mat(result(k,3)),'Marker', '*','Color', 'red');
end
textm(cell2mat(result(1:3,2)),cell2mat(result(1:3,3))-10,{'1','2','3'});






function budget_Callback(hObject, eventdata, handles)
% hObject    handle to budget (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of budget as text
%        str2double(get(hObject,'String')) returns contents of budget as a double


% --- Executes during object creation, after setting all properties.
function budget_CreateFcn(hObject, eventdata, handles)
% hObject    handle to budget (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Gresult;
open('Details.fig');
h=guihandles;
set(h.table,'ColumnName',{'City Name','Latitude','Longitude','Flight Fare($)','Hotel Price($)','Day Rest','City Score'});
set(h.table,'ColumnWidth',{77,77,77,77,77,77,77});
set(h.table,'ColumnEditable',false(1,7));
set(h.table,'Data',Gresult);



function C1N_Callback(hObject, eventdata, handles)
% hObject    handle to C1N (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of C1N as text
%        str2double(get(hObject,'String')) returns contents of C1N as a double


% --- Executes during object creation, after setting all properties.
function C1N_CreateFcn(hObject, eventdata, handles)
% hObject    handle to C1N (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function C1S_Callback(hObject, eventdata, handles)
% hObject    handle to C1S (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of C1S as text
%        str2double(get(hObject,'String')) returns contents of C1S as a double


% --- Executes during object creation, after setting all properties.
function C1S_CreateFcn(hObject, eventdata, handles)
% hObject    handle to C1S (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function C2N_Callback(hObject, eventdata, handles)
% hObject    handle to C2N (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of C2N as text
%        str2double(get(hObject,'String')) returns contents of C2N as a double


% --- Executes during object creation, after setting all properties.
function C2N_CreateFcn(hObject, eventdata, handles)
% hObject    handle to C2N (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function C2S_Callback(hObject, eventdata, handles)
% hObject    handle to C2S (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of C2S as text
%        str2double(get(hObject,'String')) returns contents of C2S as a double


% --- Executes during object creation, after setting all properties.
function C2S_CreateFcn(hObject, eventdata, handles)
% hObject    handle to C2S (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function C3N_Callback(hObject, eventdata, handles)
% hObject    handle to C3N (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of C3N as text
%        str2double(get(hObject,'String')) returns contents of C3N as a double


% --- Executes during object creation, after setting all properties.
function C3N_CreateFcn(hObject, eventdata, handles)
% hObject    handle to C3N (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function C3S_Callback(hObject, eventdata, handles)
% hObject    handle to C3S (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of C3S as text
%        str2double(get(hObject,'String')) returns contents of C3S as a double


% --- Executes during object creation, after setting all properties.
function C3S_CreateFcn(hObject, eventdata, handles)
% hObject    handle to C3S (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[FileName,PathName] = uigetfile('*.xlsx','Select the Data file');  
global file;
file = fullfile(PathName,FileName);  
