function [fontSize,fontName,boldType,latexType]=...
    fontsizenamebold(figNum,fontSize,fontName,boldType,latexType)
%% 设置全局的字体样式
if nargin==1
    fontSize=12;
    fontName='Arial';
    boldType='bold';
    latexType='none';
elseif nargin==0
    warndlg('请输入函数参数');
    return
end

figHandle=fignum2handle(figNum);
%%找出所有可能含有字的位置
%先单独处理最麻烦的刻度线数字
axesHandles=findall(figHandle,'Type','axes');
for iaxesHandles=1:length(axesHandles)
    set(axesHandles(iaxesHandles).XLabel,'FontName',fontName,'FontSize',...
        fontSize-2,'FontWeight',boldType);
    set(axesHandles(iaxesHandles).YLabel,'FontName',fontName,'FontSize',...
        fontSize-2,'FontWeight',boldType);
    set(axesHandles(iaxesHandles).ZLabel,'FontName',fontName,'FontSize',...
        fontSize-2,'FontWeight',boldType);
    set(axesHandles(iaxesHandles).Title,'FontName',fontName,'FontSize',...
        fontSize-2,'FontWeight',boldType);
    set(axesHandles,'FontName',fontName,'FontSize',...
        fontSize-2,'FontWeight',boldType);
end




XYZTHandles=findall(figHandle,'Type','text');
legendHandles=findall(figHandle,'Type','legend');
textBoxHanldes=findall(figHandle,'Type','textbox');
objfontNameHandles=[XYZTHandles;legendHandles;textBoxHanldes];
%字体粗细和编译器全局统一
for iobjfontNameHandles=1:length(objfontNameHandles)
    objfontNameHandles(iobjfontNameHandles).FontName=fontName;
    objfontNameHandles(iobjfontNameHandles).Interpreter=latexType;
    objfontNameHandles(iobjfontNameHandles).FontWeight=boldType;
end

for ilegendHandles=1:length(legendHandles)
    legendHandles(ilegendHandles).FontSize=fontSize-2;
end
for itextBoxHanldes=1:length(textBoxHanldes)
    XYZTHandles(itextBoxHanldes).FontSize=fontSize;
end
%坐标轴与图例字号比其他小2Pt
shg
end
