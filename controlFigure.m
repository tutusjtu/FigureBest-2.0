function handleMyFigure=controlFigure(iNumber,iColumn)
%% 缺省参数
%function handleMyFigure=controlFigure(iNumber)
if nargin==0
    iNumber=get(gcf,'Number');
    iColumn=1;
elseif nargin==1
    iColumn=1;
end

handleMyFigure=findobj('Type', 'figure','Number',iNumber);

if isempty(handleMyFigure)
    iNumberCell=inputdlg('重新输入正确的figure数字（一次一个数）','输入错误',[1 50]) ;
    if ~isempty(iNumberCell)
    iNumber=str2num(iNumberCell{1});
    else
        return
    end
    handleMyFigure=findobj('Type', 'figure','Number',iNumber);
    if isempty(handleMyFigure)
        clc;
        [IconData,IconCMap]=imread('tutu.jpg');
        msgbox('数字输入错误，程序自动退出（开发者公众号：tutongdao）','error','custom',IconData,IconCMap);pause(1);
        return
    end
end

%% figure窗口设置
%   输入:figure句柄,默认当前gcf
%   返回：修改后的figure句柄
handleMyFigure.Name='图图的绘图格式';
handleMyFigure.Units='centimeters';     %改为厘米为单位
%打印属性 和图片属性相仿
handleMyFigure.PaperUnits='centimeters';
if iColumn==1
    %设置图片的大小，双栏选择[10, 10, 9, 6.75]cm，[相对位置 宽度高度]
    handleMyFigure.Position=[10, 4, 19, 14.25];
    handleMyFigure.PaperPosition=[10, 4, 19, 14.25];
else
    handleMyFigure.Position=[10, 10, 9, 6.75];
    handleMyFigure.PaperPosition=[10, 10, 9, 6.75];
end

handleMyFigure.Resize='off';
handleMyFigure.Color='w';               %将图形背景设置为白色

handleMyFigure.InvertHardcopy='off';%保存图像坐标背景色
end