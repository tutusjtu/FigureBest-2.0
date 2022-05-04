function varargout = FigureBestV2(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @FigureBestV2_OpeningFcn, ...
    'gui_OutputFcn',  @FigureBestV2_OutputFcn, ...
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


% --- Executes just before FigureBestV2 is made visible.
function FigureBestV2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to FigureBestV2 (see VARARGIN)

% Choose default command line output for FigureBestV2
handles.output = hObject;


handles.FB.Name = 'FigrueBest v2.0.2';
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes FigureBestV2 wait for user response (see UIRESUME)
% uiwait(handles.FB);


% --- Outputs from this function are returned to the command line.
function varargout = FigureBestV2_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in start.
function start_Callback(hObject, eventdata, handles)


iNumberVector=str2num(handles.iNumber.String);
global iColor;
global idrawType;
global name;
global Dimention;
global isOut;
iColor=getappdata(handles.color,'Color');
idrawType=getappdata(handles.iDrawType,'iDrawType');
name = getappdata(handles.name,'name');
Dimention=getappdata(handles.is3D,'is3D');
isOut=getappdata(handles.isOut,'isOut');
if ~isempty(iNumberVector)
    for i=1:length(iNumberVector)
        controlAll(iNumberVector(i));
    end
else
    f=gcf;
    controlAll(f.Number);
end







function iNumber_Callback(hObject, eventdata, handles)
% hObject    handle to iNumber (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of iNumber as text
%        str2double(get(hObject,'String')) returns contents of iNumber as a double


% --- Executes during object creation, after setting all properties.
function iNumber_CreateFcn(hObject, eventdata, handles)
% hObject    handle to iNumber (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function ICON1_Callback(hObject, eventdata, handles)
% hObject    handle to ICON1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in iDrawType.
function iDrawType_Callback(hObject, eventdata, handles)
% hObject    handle to iDrawType (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns iDrawType contents as cell array
%        contents{get(hObject,'Value')} returns selected item from iDrawType
T=0;
switch hObject.Value
    case 1
        T=2;
    case 2
        T=1;
    case 3
        T=2;
end
setappdata(hObject,'iDrawType',T);


% --- Executes during object creation, after setting all properties.
function iDrawType_CreateFcn(hObject, eventdata, handles)
% hObject    handle to iDrawType (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.

setappdata(hObject,'iDrawType',2);

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
set(hObject,'Visible','off');


% --- Executes on selection change in color.
function color_Callback(hObject, eventdata, handles)
% hObject    handle to color (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns color contents as cell array
%        contents{get(hObject,'Value')} returns selected item from color

switch hObject.Value
    case 1
        C=42;
    case 2
        C=21;
    case 3
        C=22;
    case 4
        C=3;
    case 5
        C=41;
    case 6
        C=42;
    case 7
        C=43;
    case 8
        C=5;
    case 9
        C=6;
end
setappdata(hObject,'Color',C);


% --- Executes during object creation, after setting all properties.
function color_CreateFcn(hObject, eventdata, handles)
% hObject    handle to color (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
setappdata(hObject,'Color',21);

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
    
end
set(hObject,'Visible','off');


% --- Executes on button press in result.
function result_Callback(hObject, eventdata, handles)
% hObject    handle to result (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

filePath=pwd;

winopen(filePath);



function name_Callback(hObject, eventdata, handles)
% hObject    handle to name (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of name as text
%        str2double(get(hObject,'String')) returns contents of name as a double
%输入名字
name=handles.name.String;
setappdata(hObject,'name',name);

% --- Executes during object creation, after setting all properties.
function name_CreateFcn(hObject, eventdata, handles)
% hObject    handle to name (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
setappdata(hObject,'name','FigureFromTuTu');
set(hObject,'Visible','off');
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in YesOut.
function YesOut_Callback(hObject, eventdata, handles)
% hObject    handle to YesOut (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of YesOut

Yes=handles.YesOut.Value;

if Yes==1
    set(handles.result,'Visible','on');
    set(handles.name,'Visible','on');
    set(handles.tips_name,'Visible','on');
    set(handles.NoOut,'Value',0);
    % else
    %     set(handles.result,'Visible','off');
    %     set(handles.name,'Visible','off');
    %     set(handles.tips_name,'Visible','off');
end


% --- Executes during object creation, after setting all properties.
function YesOut_CreateFcn(hObject, eventdata, handles)
% hObject    handle to YesOut (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in isOut.
function isOut_Callback(hObject, eventdata, handles)
% hObject    handle to isOut (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of isOut
if hObject.Value==1;
    set(handles.name,'Visible','on');
    set(handles.tips_name,'Visible','on');
    set(handles.result,'Visible','on');
    setappdata(hObject,'isOut',1);
    set(handles.remind,'String','图片将以指定名称被保存！');
    
else
    set(handles.name,'Visible','off');
    set(handles.tips_name,'Visible','off');
    set(handles.result,'Visible','off');
    setappdata(hObject,'isOut',0);
    set(handles.remind,'String','当前美化不/未保存！');
end



% --- Executes on button press in is3D.
function is3D_Callback(hObject, eventdata, handles)
% hObject    handle to is3D (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of is3D

if hObject.Value==1
    setappdata(hObject,'is3D',3);
    set(handles.remind,'String','用于控制三维视图的角度')
else
    setappdata(hObject,'is3D',2);
    set(handles.remind,'String','二维作图模式')
end


% --- Executes during object creation, after setting all properties.
function isOut_CreateFcn(hObject, eventdata, handles)
% hObject    handle to isOut (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
setappdata(hObject,'isOut',0);
set(hObject,'Visible','on');


% --- Executes during object creation, after setting all properties.
function is3D_CreateFcn(hObject, eventdata, handles)
% hObject    handle to is3D (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
setappdata(hObject,'is3D',2);
set(hObject,'Visible','off');

% --- Executes during object creation, after setting all properties.
function result_CreateFcn(hObject, eventdata, handles)
% hObject    handle to result (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
set(hObject,'Visible','off');


% --- Executes during object creation, after setting all properties.
function tips_name_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tips_name (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
set(hObject,'Visible','off');


% --- Executes on button press in test.
function test_Callback(hObject, eventdata, handles)
% hObject    handle to test (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.remind,'String','正在生成一些用于测试效果的图片......');
test;
set(handles.remind,'String','测试图片生成——>已完成');
% --- Executes on button press in singlecolumn.
function singlecolumn_Callback(hObject, eventdata, handles)
% hObject    handle to singlecolumn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.remind,'String',{'正在设置双栏格式'});

iNumberVector=str2num(handles.iNumber.String);
for i=1:length(iNumberVector)
    handleMyFigure=findall(groot,'Type','figure','Number',iNumberVector(i))
    handleMyFigure.Name='图图的绘图格式-双栏';
    handleMyFigure.Units='centimeters';     %改为厘米为单位
    %设置图片的大小，双栏选择[10, 10, 9, 6.75]cm，[相对位置 宽度高度]
    handleMyFigure.Position=[10, 10, 9, 6.75];
    handleMyFigure.Resize='off';
    handleMyFigure.Color='w';               %将图形背景设置为白色
    %打印属性 和图片属性相仿
    handleMyFigure.PaperUnits='centimeters';
    handleMyFigure.PaperPosition=[10, 10, 9, 6.75];
    handleMyFigure.InvertHardcopy='off';%保存图像坐标背景色
end
set(handles.remind,'String',{'双栏格式设置完成，图片已规范化！'});


% --- Executes on button press in doublecolumn.
function doublecolumn_Callback(hObject, eventdata, handles)
% hObject    handle to doublecolumn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.remind,'String',{'正在设置单栏格式'});
iNumberVector=str2num(handles.iNumber.String);
for i=1:length(iNumberVector)
    handleMyFigure=findall(groot,'Type','figure','Number',iNumberVector(i))
    handleMyFigure.Name='图图的绘图格式-单栏';
    handleMyFigure.Units='centimeters';     %改为厘米为单位
    %设置图片的大小，单栏选择[10, 4, 19, 14.25]cm，[相对位置 宽度高度]
    handleMyFigure.Position=[10, 4, 19, 14.25];
    handleMyFigure.Resize='off';
    handleMyFigure.Color='w';               %将图形背景设置为白色
    %打印属性 和图片属性相仿
    handleMyFigure.PaperUnits='centimeters';
    handleMyFigure.PaperPosition=[10, 4, 19, 14.25];
    handleMyFigure.InvertHardcopy='off';%保存图像坐标背景色
end
set(handles.remind,'String',{'单栏格式设置完成，图片已规范化！'});


% --- Executes on button press in expert.
function expert_Callback(hObject, eventdata, handles)
% hObject    handle to expert (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

name=getappdata(handles.name,'name');

if ~strcmp(name,'FigureFromTuTu')
    disp('正在导出');
    set(handles.remind,'String',{'正在导出，格式为高分辨率PNG'});
    iNumberVector=str2num(handles.iNumber.String);
    for i=1:length(iNumberVector)
        handleMyFigure=findall(groot,'Type','figure','Number',iNumberVector(i));
        myExportFigure(handleMyFigure,name);
    end
    disp('导出成功')
    set(handles.remind,'String',{'已经成功导出，可以点击快速看图！'});
    set(handles.show,'Enable','on');
else
    disp('请先打开输出开关,并输入名字')
    set(handles.remind,'String',{'请先打开输出开关，并输入图片名！'});
end


% --- Executes on button press in show.
function show_Callback(hObject, eventdata, handles)
% hObject    handle to show (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
filePath=pwd;
fid=fopen('name_append.txt','r');
i=1;
while feof(fid)~=1
    nameMatrix{i}=fgetl(fid);
    i=i+1;
end
fclose(fid);

for i=1:length(nameMatrix)
    name=nameMatrix{i};
    if ~isempty(name)
        winopen([filePath,'\',name,'.png']);
    else
        disp('请先打开输出开关,并输入名字');
        set(handles.remind,'String','请先打开输出开关,并输入名字');
    end
end



function remind_Callback(hObject, eventdata, handles)
% hObject    handle to remind (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of remind as text
%        str2double(get(hObject,'String')) returns contents of remind as a double


% --- Executes during object creation, after setting all properties.
function remind_CreateFcn(hObject, eventdata, handles)
% hObject    handle to remind (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.

set(hObject,'String','欢迎使用图图的软件');

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
set(hObject,'Visible','on');


% --- Executes on button press in addlegend.
function addlegend_Callback(hObject, eventdata, handles)
% hObject    handle to addlegend (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.remind,'String','为某个figure添加图例');
modifyLegendRecognize(fignum2handle(str2num(handles.iNumber.String)));
set(handles.remind,'String','添加图例完成');


% --- Executes on button press in font.
function font_Callback(hObject, eventdata, handles)
% hObject    handle to font (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
figNum=str2num(handles.iNumber.String);
%(figNum,fontSize,fontName,boldType,latexType)
prompt = {'输入字号（数字）:','输入字体','输入是否加粗(bold/normal):','输入解释器(latex/none)'};
dlgtitle = '字体相关参数设置';
dims = [1 35];
definput = {'12','Arial','bold','none'};
answer = inputdlg(prompt,dlgtitle,dims,definput)
fontSize=str2num(answer{1});
fontName=answer{2} ;
boldType=answer{3} ;
latexType=answer{4} ;
fontsizenamebold(figNum,fontSize,fontName,boldType,latexType);



function XL_Callback(hObject, eventdata, handles)
% hObject    handle to XL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of XL as text
%        str2double(get(hObject,'String')) returns contents of XL as a double


% --- Executes during object creation, after setting all properties.
function XL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to XL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
set(hObject,'Visible','off');
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in fill.
function fill_Callback(hObject, eventdata, handles)
% hObject    handle to fill (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.remind,'String','此功能慎用~');
axesfillfigure(str2num(handles.iNumber.String));
shg;


% --- Executes on button press in label.
function label_Callback(hObject, eventdata, handles)
% hObject    handle to label (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.XL,'Visible','on');
set(handles.YL,'Visible','on');
set(handles.ZL,'Visible','on');
set(handles.TI,'Visible','on');
set(handles.XB,'Visible','on');
set(handles.YB,'Visible','on');
set(handles.ZB,'Visible','on');
set(handles.TB,'Visible','on');
set(handles.addXYZT,'Visible','on');
set(handles.pushbutton15,'Visible','on');



function YL_Callback(hObject, eventdata, handles)
% hObject    handle to YL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of YL as text
%        str2double(get(hObject,'String')) returns contents of YL as a double


% --- Executes during object creation, after setting all properties.
function YL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to YL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
set(hObject,'Visible','off');
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ZL_Callback(hObject, eventdata, handles)
% hObject    handle to ZL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ZL as text
%        str2double(get(hObject,'String')) returns contents of ZL as a double


% --- Executes during object creation, after setting all properties.
function ZL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ZL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
set(hObject,'Visible','off');
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Ti_Callback(hObject, eventdata, handles)
% hObject    handle to Ti (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Ti as text
%        str2double(get(hObject,'String')) returns contents of Ti as a double


% --- Executes during object creation, after setting all properties.
function Ti_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Ti (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in addXYZT.
function addXYZT_Callback(hObject, eventdata, handles)
% hObject    handle to addXYZT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.remind,'String','添加坐标轴文字中...！如果有子图，会提示您选择坐标轴');
axess=findall(fignum2handle(str2num(handles.iNumber.String)),'Type','axes');
if length(axess)>=2
    set(handles.remind,'String','因为有子图，所以你有5秒钟的时间单击你要选择的坐标轴！');
    pause(5);
    myAxesHandle=gca;
    if strcmp(myAxesHandle.Type,'axes')
        set(handles.remind,'String','选择错误，请重试一次');pause(1);
        set(handles.remind,'String','因为有子图，所以你有5秒钟的时间单击你要选择的坐标轴！');
        pause(5);
        myAxesHandle=gca;
        if myAxesHandle.Type~='axes'
            set(handles.remind,'String','再次错误，请重新来');return
        end
    end
elseif length(axess)==1
    myAxesHandle=axess;
else
    myAxesHandle=gca;
end

myAxesHandle.XLabel.String=handles.XL.String;
myAxesHandle.YLabel.String=handles.YL.String;
myAxesHandle.ZLabel.String=handles.ZL.String;
myAxesHandle.Title.String=handles.TI.String;
%myAxesHandle.Ti.String=handles.Ti.String;

set(handles.remind,'String','添加已完成！');


% --- Executes on button press in pushbutton15.
function pushbutton15_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.XL,'Visible','off');
set(handles.YL,'Visible','off');
set(handles.ZL,'Visible','off');
set(handles.TI,'Visible','off');
set(handles.XB,'Visible','off');
set(handles.YB,'Visible','off');
set(handles.ZB,'Visible','off');
set(handles.TB,'Visible','off');
set(handles.addXYZT,'Visible','off');
set(hObject,'Visible','off');

% --- Executes during object creation, after setting all properties.
function addXYZT_CreateFcn(hObject, eventdata, handles)
% hObject    handle to addXYZT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
set(hObject,'Visible','off');

myAxesHandle.XLabel.String='defaultX';
myAxesHandle.YLabel.String='defaultY';
myAxesHandle.ZLabel.String='defaultZ';



function TI_Callback(hObject, eventdata, handles)
% hObject    handle to TI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TI as text
%        str2double(get(hObject,'String')) returns contents of TI as a double


% --- Executes during object creation, after setting all properties.
function TI_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
set(hObject,'Visible','off');
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function label_CreateFcn(hObject, eventdata, handles)
% hObject    handle to label (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
% set(handles.XL,'Visible','off');
% set(handles.YL,'Visible','off');
% set(handles.ZL,'Visible','off');
% set(handles.TI,'Visible','off');
% set(handles.XB,'Visible','off');
% set(handles.YB,'Visible','off');
% set(handles.ZB,'Visible','off');
% set(handles.TB,'Visible','off');
% set(handles.addXYZT,'Visible','off');
% set(handles.pushbutton15,'Visible','off');


% --- Executes during object creation, after setting all properties.
function pushbutton15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
set(hObject,'Visible','off');

% --- Executes during object creation, after setting all properties.
function XB_CreateFcn(hObject, eventdata, handles)
set(hObject,'Visible','off');
% hObject    handle to XB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function YB_CreateFcn(hObject, eventdata, handles)
% hObject    handle to YB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
set(hObject,'Visible','off');


% --- Executes during object creation, after setting all properties.
function ZB_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ZB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
set(hObject,'Visible','off');


% --- Executes during object creation, after setting all properties.
function TB_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
set(hObject,'Visible','off');


% --- Executes during object creation, after setting all properties.
function show_CreateFcn(hObject, eventdata, handles)
% hObject    handle to show (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
set(hObject,'Enable','off');


% --------------------------------------------------------------------
function ICON2_Callback(hObject, eventdata, handles)
% hObject    handle to ICON2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

h=imshow('持续说明.png');
f=h.Parent.Parent;
f.Name='关于软件的说明';
f.Resize='off';
f.Position=[100 100 400 400];
f.NumberTitle='off';
f.MenuBar='none'
shg;


% --------------------------------------------------------------------
function ICON4_Callback(hObject, eventdata, handles)
% hObject    handle to ICON4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% if password()==1;

% else
%     set(handles.remind,'String','密码错误！');
%     myicon = imread('tutu.jpg');
%     h=msgbox('请关注微信公众号“tutongdao”图通道回复“FBPW”获取最新密码','密码错误','custom',myicon);
% end




% --------------------------------------------------------------------
function ICON3_Callback(hObject, eventdata, handles)
% hObject    handle to ICON3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)







% --- Executes during object creation, after setting all properties.
function ICON3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ICON3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --------------------------------------------------------------------
function ICON4_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to ICON4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function uibuttongroup4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uibuttongroup4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
set(hObject,'Visible','off');


% --- Executes during object creation, after setting all properties.
function uibuttongroup5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uibuttongroup5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
set(hObject,'Visible','off');


% --- Executes during object creation, after setting all properties.
function test_CreateFcn(hObject, eventdata, handles)
% hObject    handle to test (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
set(hObject,'Visible','off');


% --- Executes on button press in pushbutton18.
function pushbutton18_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function closeall_Callback(hObject, eventdata, handles)
% hObject    handle to closeall (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% --- Executes on button press in pushbutton19.
function pushbutton19_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
try
    web('https://space.bilibili.com/223755925','-browser')
    disp('[开发者] 图通道')
catch
    disp('联网后访问以下网址：')
    disp('https://space.bilibili.com/223755925')
end

% --- Executes on button press in pushbutton20.
function pushbutton20_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

handles.remind.String = ' ';

set(handles.uibuttongroup4,'Visible','off');
set(handles.uibuttongroup5,'Visible','off');
set(handles.isOut,'Visible','on');
set(handles.test,'Visible','off');
set(handles.remind,'Visible','on');
set(handles.color,'Visible','off');
set(handles.iDrawType,'Visible','off');
set(handles.is3D,'Visible','off');
set(handles.name,'Visible','off');
set(handles.tips_name,'Visible','off');
set(handles.result,'Visible','off');

% --- Executes on button press in pushbutton21.
function pushbutton21_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

handles.remind.String = ' ';

set(handles.uibuttongroup4,'Visible','on');
set(handles.uibuttongroup5,'Visible','on');
set(handles.isOut,'Visible','on');
set(handles.test,'Visible','on');
set(handles.remind,'Visible','on');
set(handles.is3D,'Visible','on');
set(handles.color,'Visible','on');
set(handles.iDrawType,'Visible','on');


% --- Executes on button press in pushbutton22.
function pushbutton22_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close all;
clc;

% --- Executes on button press in pushbutton23.
function pushbutton23_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(findall(0,'tag','Msgbox_ '));

% --- Executes on button press in pushbutton24.
function pushbutton24_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
try
    web('https://www.bilibili.com/video/BV17L4y1x78W','-browser')
    disp('[开发者] 图通道')
catch
    disp('联网后访问以下网址：')
    disp('https://www.bilibili.com/video/BV17L4y1x78W')
end


% --- Executes during object creation, after setting all properties.
function FB_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
