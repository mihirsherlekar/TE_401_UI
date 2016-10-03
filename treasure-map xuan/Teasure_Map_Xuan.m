function varargout = Teasure_Map_Xuan(varargin)
% TEASURE_MAP_XUAN MATLAB code for Teasure_Map_Xuan.fig
%      TEASURE_MAP_XUAN, by itself, creates a new TEASURE_MAP_XUAN or raises the existing
%      singleton*.
%
%      H = TEASURE_MAP_XUAN returns the handle to a new TEASURE_MAP_XUAN or the handle to
%      the existing singleton*.
%
%      TEASURE_MAP_XUAN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TEASURE_MAP_XUAN.M with the given input arguments.
%
%      TEASURE_MAP_XUAN('Property','Value',...) creates a new TEASURE_MAP_XUAN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Teasure_Map_Xuan_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Teasure_Map_Xuan_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Teasure_Map_Xuan

% Last Modified by GUIDE v2.5 27-Sep-2016 13:11:14

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Teasure_Map_Xuan_OpeningFcn, ...
                   'gui_OutputFcn',  @Teasure_Map_Xuan_OutputFcn, ...
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


% --- Executes just before Teasure_Map_Xuan is made visible.
function Teasure_Map_Xuan_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Teasure_Map_Xuan (see VARARGIN)
handles.current_data=[];
handles.xlabel=[];
handles.label=[];
handles.score=zeros(1,26);

handles.w_hiking=5;
handles.w_road=3;
handles.w_skiing=5;
handles.w_forest=5;
handles.w_river=5;
handles.w_lake=4;
handles.w_beach=3;

handles.w_STmuseum=4;
handles.w_ARTmuseum=4;
handles.w_SSmuseum=5;
handles.w_musical=5;
handles.w_concert=3;
handles.w_comedy=5;
handles.w_HCheritage=0;

handles.w_food=5;
handles.w_sunbathe=2.5;
handles.w_biking=5;
handles.w_Tparks=3.5;
handles.w_parachuting=5;
handles.w_walking=5;
handles.w_shooting=5;
handles.w_Hriding=5;
handles.w_golf=5;
handles.w_sailing=5;
handles.w_boating=5;
handles.w_surfing=5;

handles.weight(1)=handles.w_hiking;
handles.weight(2)=handles.w_road;
handles.weight(3)=handles.w_skiing;
handles.weight(4)=handles.w_forest;
handles.weight(5)=handles.w_river;
handles.weight(6)=handles.w_lake;
handles.weight(7)=handles.w_beach;
handles.weight(8)=handles.w_STmuseum;
handles.weight(9)=handles.w_ARTmuseum;
handles.weight(10)=handles.w_SSmuseum;
handles.weight(11)=handles.w_musical;
handles.weight(12)=handles.w_concert;
handles.weight(13)=handles.w_comedy;
handles.weight(14)=handles.w_HCheritage;
handles.weight(15)=handles.w_food;
handles.weight(16)=handles.w_sunbathe;
handles.weight(17)=handles.w_biking;
handles.weight(18)=handles.w_Tparks;
handles.weight(19)=handles.w_parachuting;
handles.weight(20)=handles.w_walking;
handles.weight(21)=handles.w_shooting;
handles.weight(22)=handles.w_Hriding;
handles.weight(23)=handles.w_golf;
handles.weight(24)=handles.w_sailing;
handles.weight(25)=handles.w_boating;
handles.weight(26)=handles.w_surfing;

bar(1:26,handles.weight);
set(gca,'XLim',[0 27])
h0=set(gca,'XTick',1:26 );
mainlabel={'hiking','road','skiing','forest','river','lake','beach','STmuseum','ARTmuseum','SSmuseum','musical','concert','comedy','HCheritage','food','sunbathe','biking','Tparks','parachuting','walking','shooting','Hriding','golf','sailing','boating','surfing'};
% set(gca,'XTickLabel',mainlabel(1:26));%,'STmuseum','ARTmuseum','SSmuseum','musical','concert','comedy','HCheritage'});
set(gca,'xticklabels',mainlabel(1:26)); h = gca;
th=rotateticklabel(h, 45);

% Choose default command line output for Teasure_Map_Xuan
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Teasure_Map_Xuan wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Teasure_Map_Xuan_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double
handles.label=get(hObject,'String');
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
new=dot(handles.weight,handles.score);
handles.current_data=[handles.current_data new];
celldata = cellstr(handles.label);
handles.xlabel=[handles.xlabel;celldata];
h=bar(handles.current_data);
set(gca,'xticklabels',handles.xlabel); h = gca;
th=rotateticklabel(h, 45);

% h=bar(handles.current_data,1,'group');
% handles.xlabel=[handles.xlabel;handles.label];
% set(gca,'XTickLabel',handles.xlabel);
% th=rotateticklabel(h, 45); h = gca;
guidata(hObject, handles);

% --- Executes on button press in food.
function food_Callback(hObject, eventdata, handles)
% hObject    handle to food (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of food
handles.score(15)=get(hObject,'Value');
guidata(hObject, handles);

% --- Executes on button press in sunbathe.
function sunbathe_Callback(hObject, eventdata, handles)
% hObject    handle to sunbathe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of sunbathe
handles.score(16)=get(hObject,'Value');
guidata(hObject, handles);

% --- Executes on button press in biking.
function biking_Callback(hObject, eventdata, handles)
% hObject    handle to biking (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of biking
handles.score(17)=get(hObject,'Value');
guidata(hObject, handles);

% --- Executes on button press in Tparks.
function Tparks_Callback(hObject, eventdata, handles)
% hObject    handle to Tparks (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Tparks
handles.score(18)=get(hObject,'Value');
guidata(hObject, handles);

% --- Executes on button press in parachuting.
function parachuting_Callback(hObject, eventdata, handles)
% hObject    handle to parachuting (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parachuting
handles.score(19)=get(hObject,'Value');
guidata(hObject, handles);

% --- Executes on button press in walking.
function walking_Callback(hObject, eventdata, handles)
% hObject    handle to walking (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of walking
handles.score(20)=get(hObject,'Value');
guidata(hObject, handles);

% --- Executes on button press in shooting.
function shooting_Callback(hObject, eventdata, handles)
% hObject    handle to shooting (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of shooting
handles.score(21)=get(hObject,'Value');
guidata(hObject, handles);

% --- Executes on button press in Hriding.
function Hriding_Callback(hObject, eventdata, handles)
% hObject    handle to Hriding (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Hriding
handles.score(22)=get(hObject,'Value');
guidata(hObject, handles);

% --- Executes on button press in golf.
function golf_Callback(hObject, eventdata, handles)
% hObject    handle to golf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of golf
handles.score(23)=get(hObject,'Value');
guidata(hObject, handles);

% --- Executes on button press in sailing.
function sailing_Callback(hObject, eventdata, handles)
% hObject    handle to sailing (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of sailing
handles.score(24)=get(hObject,'Value');
guidata(hObject, handles);

% --- Executes on button press in boating.
function boating_Callback(hObject, eventdata, handles)
% hObject    handle to boating (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of boating
handles.score(25)=get(hObject,'Value');
guidata(hObject, handles);

% --- Executes on button press in surfing.
function surfing_Callback(hObject, eventdata, handles)
% hObject    handle to surfing (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of surfing
handles.score(26)=get(hObject,'Value');
guidata(hObject, handles);

% --- Executes on button press in STmuseum.
function STmuseum_Callback(hObject, eventdata, handles)
% hObject    handle to STmuseum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of STmuseum
handles.score(8)=get(hObject,'Value');
guidata(hObject, handles);

% --- Executes on button press in ARTmuseum.
function ARTmuseum_Callback(hObject, eventdata, handles)
% hObject    handle to ARTmuseum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of ARTmuseum
handles.score(9)=get(hObject,'Value');
guidata(hObject, handles);

% --- Executes on button press in SSmuseum.
function SSmuseum_Callback(hObject, eventdata, handles)
% hObject    handle to SSmuseum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of SSmuseum
handles.score(10)=get(hObject,'Value');
guidata(hObject, handles);

% --- Executes on button press in musical.
function musical_Callback(hObject, eventdata, handles)
% hObject    handle to musical (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of musical
handles.score(11)=get(hObject,'Value');
guidata(hObject, handles);

% --- Executes on button press in concert.
function concert_Callback(hObject, eventdata, handles)
% hObject    handle to concert (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of concert
handles.score(12)=get(hObject,'Value');
guidata(hObject, handles);

% --- Executes on button press in comedy.
function comedy_Callback(hObject, eventdata, handles)
% hObject    handle to comedy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of comedy
handles.score(13)=get(hObject,'Value');
guidata(hObject, handles);

% --- Executes on button press in HCheritage.
function HCheritage_Callback(hObject, eventdata, handles)
% hObject    handle to HCheritage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of HCheritage
handles.score(14)=get(hObject,'Value');
guidata(hObject, handles);

% --- Executes on button press in hiking.
function hiking_Callback(hObject, eventdata, handles)
% hObject    handle to hiking (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of hiking
handles.score(1)=get(hObject,'Value');
guidata(hObject, handles);

% --- Executes on button press in road.
function road_Callback(hObject, eventdata, handles)
% hObject    handle to road (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of road
handles.score(2)=get(hObject,'Value');
guidata(hObject, handles);


% --- Executes on button press in skiing.
function skiing_Callback(hObject, eventdata, handles)
% hObject    handle to skiing (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of skiing
handles.score(3)=get(hObject,'Value');
guidata(hObject, handles);


% --- Executes on button press in forest.
function forest_Callback(hObject, eventdata, handles)
% hObject    handle to forest (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of forest
handles.score(4)=get(hObject,'Value');
guidata(hObject, handles);


% --- Executes on button press in river.
function river_Callback(hObject, eventdata, handles)
% hObject    handle to river (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of river
handles.score(5)=get(hObject,'Value');
guidata(hObject, handles);


% --- Executes on button press in lake.
function lake_Callback(hObject, eventdata, handles)
% hObject    handle to lake (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of lake
handles.score(6)=get(hObject,'Value');
guidata(hObject, handles);


% --- Executes on button press in beach.
function beach_Callback(hObject, eventdata, handles)
% hObject    handle to beach (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of beach
handles.score(7)=get(hObject,'Value');
guidata(hObject, handles);
