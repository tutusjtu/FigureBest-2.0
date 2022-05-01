function handleMyAxes=controlAxes(handleMyAxes,iColor)
if nargin==1
    iColor=4;
end
%% 颜色控制ColorOrder
% %绘图色系
% switch iColor
%     case 21
%         co=[255 59 59;7 7 7];%二色红黑配图
%     case 22
%         co=[254 129 125;129 184 223];%二色红蓝配图
%     case 4
%         co=[23 23 23;6 233 6;255 28 0;0 37 255];%四色配色
%     case 3
%         co=[77 133 189;247 144 61;89 169 90];%三色配色
%     case 5
%         co=[1 86 153;250 192 15;243 118 74;95 118 74;95 198 201;79 89 109];%五色配色
%     case 6
%         co=[203 180 123;91 183 205; 71 120 185;84 172 117;197 86 89;117 114 181];%六色配色
%     otherwise
%         disp('色卡不存在,采用默认值')
%         co=[255 59 59;7 7 7];
% end
co=choiceColorOrder(iColor);
set(handleMyAxes,'ColorOrder',co/255,'NextPlot','add');
colormap(handleMyAxes,co/255);
%% 坐标轴参数
%Latex解释器中似乎不支持中文
%书写标签和标题
set(handleMyAxes.XLabel,'Interpreter','latex');
set(handleMyAxes.YLabel,'Interpreter','latex');
set(handleMyAxes.ZLabel,'Interpreter','latex');
set(handleMyAxes.Title,'Interpreter','latex');
if isempty(handleMyAxes.XLabel.String)
    handleMyAxes.XLabel.String='$\bf xxxXXX\ {label\ in\ Latex}$';
end
if isempty(handleMyAxes.YLabel.String)
    handleMyAxes.YLabel.String='$\bf yyyYYY\ {label\ in\ Latex}$';
end
if isempty(handleMyAxes.ZLabel.String)
    handleMyAxes.ZLabel.String='$\bf zzzZZZ\ {label\ in\ Latex}$';
end
if isempty(handleMyAxes.Title.String)
    handleMyAxes.Title.String='$\ \bf{Figure\ Title}\  f(x)$';%标题加粗了
end
%设置坐标轴标签字体和字号
myFontNameLabel='Arial';
handleMyAxes.XLabel.FontName=myFontNameLabel;
handleMyAxes.YLabel.FontName=myFontNameLabel;
handleMyAxes.ZLabel.FontName=myFontNameLabel;
myFontSizeLabel=12;
handleMyAxes.XLabel.FontSize=myFontSizeLabel;
handleMyAxes.YLabel.FontSize=myFontSizeLabel;
handleMyAxes.ZLabel.FontSize=myFontSizeLabel;
%%设置坐标轴刻度字体和字号
myFontName='Arial';
handleMyAxes.FontName=myFontName;
myFontSize=12;
handleMyAxes.FontSize=myFontSize;
handleMyAxes.FontWeight='Bold';
%打开坐标轴边框
handleMyAxes.Box='on';
%设置坐标轴边框线宽
handleMyAxes.LineWidth=1.5;
%设置grid
handleMyAxes.XGrid='on';
handleMyAxes.YGrid='on';
handleMyAxes.ZGrid='on';
handleMyAxes.GridLineStyle='--';
%小刻度
handleMyAxes.XMinorTick='on';
handleMyAxes.YMinorTick='on';
handleMyAxes.ZMinorTick='on';
%hold on属性
handleMyAxes.NextPlot='add';
%光照效果
%handleMyAxes.AmbientLightColor='w';
%% 图例控制与生成
%Legend图例
%创建Legend句柄
% if size(handleMyAxes.Legend,1)==0
handleLegend=legend(handleMyAxes,'show');
% else
%     handleLegend=handleMyAxes.Legend;
%     disp('注意！二次操作图像是否有影响');
% end
controlLegend(handleLegend);
end