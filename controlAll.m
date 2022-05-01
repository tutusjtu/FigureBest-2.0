function controlAll(iNumber)
%function controlAll(iNumber)
if nargin==0
    iNumber=get(gcf,'Number');
end
%% 全局变量
global isOut;                    %是否输出图片
global name;        %输出图片名称
global iColor;                  %选择ColorOrder色系
global Dimention;                %选择2/3维度绘图
global idrawType                %以何种风格绘图1,2,3...
%...........................%更新中

%% figure窗口设置
handleMyFigure=controlFigure(iNumber);
if isempty(handleMyFigure)
    return
end

%% axes坐标轴相关设置
%
%   获取所有的axes对象（剔除legend对象）
handleMyAxes=findobj(handleMyFigure.Children,'Type','Axes');
mMyAxes=size(handleMyAxes,1);
nMyAxes=size(handleMyAxes,2);
%   需要选择是否三维绘图
switch Dimention
    case 3
        dimentionControl=ones(mMyAxes,nMyAxes);
    case 2
        dimentionControl=zeros(mMyAxes,nMyAxes);
    otherwise
        disp('待开发')
end

for iMyAxes=1:mMyAxes
    for jMyAxes=1:nMyAxes
        %设置坐标轴的属性
        handleMyAxes(iMyAxes,jMyAxes)=controlAxes(handleMyAxes(iMyAxes,jMyAxes),iColor);
        %controlAxes(handleMyAxes,iColor);
        %3D才调用，用于调整视图旋转
        %控制坐标轴标签与轴平行，针对三维图，如果是三维图，请打开
        if dimentionControl(iMyAxes,jMyAxes)==1
            Axes3DView(handleMyAxes(iMyAxes,jMyAxes));
        end
    end
end

%% 曲线曲面控制(未完成.......)
for iMyAxes=1:mMyAxes
    for jMyAxes=1:nMyAxes
        handleMyDraw=handleMyAxes(iMyAxes,jMyAxes).Children;
        nMyDraw=size(handleMyDraw,1)*size(handleMyDraw,2);
        %生成绘图循环标记
        myLineType=repmat({'-';'--';':'; '-.'},nMyDraw,1);%生成线型符号向量
        myMarkerType=repmat({'s';'o';'<';'d';'>'},nMyDraw,1);%生成标记符号向量
        myco=repmat(handleMyAxes(iMyAxes,jMyAxes).ColorOrder,[nMyDraw,1]);%修改线条颜色
        for iMyDraw=1:nMyDraw
            %开始针对不同的曲线曲面进行优化,输入任意曲线曲面的句柄
            handleMyDraw(iMyDraw)=controlMatchElement(handleMyDraw(iMyDraw),iColor,myLineType{iMyDraw},...
                myMarkerType{iMyDraw},myco(iMyDraw,:),idrawType);
        end%对一个坐标轴中的每个线或者是每个面等绘图元素循环
    end%对figure中的每一列循环
end%对figure中的每一行进行循环

%% 输出图形
if isOut==1
    myExportFigure(handleMyFigure,name,'-dtiff');
    %function myExportFigure(handleMyFigure,name,format)
end
%clc;
if isOut==1
    disp('已完成!已保存图片！');
else
    disp('已完成!未保存！');
end