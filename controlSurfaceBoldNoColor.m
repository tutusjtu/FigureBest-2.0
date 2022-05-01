function handleMyDraw=controlSurfaceBoldNoColor(handleMyDraw,iColor)
%设置柱状图的格式
%设置柱状图的格式
% 读取色卡
co=choiceColorOrder(iColor);
handleMyDraw.LineWidth=1;
handleMyDraw.EdgeColor=[0 0 0];
handleMyDraw.AlignVertexCenters='on';%锐化边线
%反设坐标轴属性以适应当前柱形图
handleMyDraw.Parent.LineWidth=1.5;
handleMyDraw.Parent.Box='on';
handleMyDraw.Parent.XGrid='on';
handleMyDraw.Parent.YGrid='on';
handleMyDraw.Parent.ZGrid='on';
handleMyDraw.Parent.GridLineStyle='--';
handleMyDraw.Parent.GridAlpha=0.2;%网格线的透明度
handleMyDraw.Parent.GridColor=[.2 .2 .2];
handleMyDraw.Parent.Color='w';
handleMyDraw.Parent.FontWeight='bold';%改为正常粗细
%图例
% handleMyDraw.Parent.Legend.Location='east';
% handleMyDraw.Parent.Legend.Box='off';
% handleMyDraw.Parent.Legend.FontWeight='normal'%改为正常粗细
%修改标签字体(改为不加粗版本)
%有那么多if是为了避免刷新已经有的文字
if isempty(handleMyDraw.Parent.XLabel.String)
    handleMyDraw.Parent.XLabel.String='$\rm xxxXXX\ {label\ in\ Latex}$';
end
if isempty(handleMyDraw.Parent.YLabel.String)
    handleMyDraw.Parent.YLabel.String='$\rm yyyYYY\ {label\ in\ Latex}$';
end
if isempty(handleMyDraw.Parent.ZLabel.String)
    handleMyDraw.Parent.ZLabel.String='$\rm zzzZZZ\ {label\ in\ Latex}$';
end
if isempty(handleMyDraw.Parent.Title.String)
    handleMyDraw.Parent.Title.String='$\ \rm{Figure\ Title}\  f(x)$';
end
end