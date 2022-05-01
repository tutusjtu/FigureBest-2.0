function handleMyDraw=controlLineLightColor(handleMyDraw,myLineType,myMarkerType,myco,iColor)
%% 设置线条的格式
handleMyDraw.Color=myco;
handleMyDraw.LineWidth=1;
handleMyDraw.MarkerSize=5;
handleMyDraw.LineStyle=myLineType;
handleMyDraw.Marker='none';
handleMyDraw.MarkerFaceColor='none';
%% 反设坐标轴属性以适应当前柱形图
handleMyDraw.Parent.LineWidth=0.5;
handleMyDraw.Parent.Box='off';
handleMyDraw.Parent.XGrid='on';
handleMyDraw.Parent.YGrid='on';
handleMyDraw.Parent.ZGrid='on';
handleMyDraw.Parent.GridLineStyle='--';
handleMyDraw.Parent.GridAlpha=0.8;%网格线的透明度
handleMyDraw.Parent.GridColor=[1 1 1];
co=choiceColorOrder(iColor);
handleMyDraw.Parent.Color=([1 1 1]-co(1,:)/255)*0.9+co(1,:)/255;
handleMyDraw.Parent.FontWeight='normal';%改为正常粗细
%% 图例
% handleMyDraw.Parent.Legend.Location='northeast';
% handleMyDraw.Parent.Legend.FontWeight='normal'%改为正常粗细
% handleMyDraw.Parent.Legend.LineWidth=0.5;
% handleMyDraw.Parent.Legend.Color='none';
% handleMyDraw.Parent.Legend.EdgeColor='none';
end