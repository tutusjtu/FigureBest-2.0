function handleMyDraw=controlLine(handleMyDraw,myLineType,myMarkerType,myco,iColor)
%% 设置线条的格式
handleMyDraw.Color=myco;
handleMyDraw.LineWidth=1.5;
handleMyDraw.MarkerSize=5;
handleMyDraw.LineStyle=myLineType;
handleMyDraw.Marker=myMarkerType;
handleMyDraw.MarkerFaceColor='w';
handleMyDraw.Parent.Color='w';
handleMyDraw.Parent.GridColor=[0.2 0.2 0.2];
handleMyDraw.Parent.GridAlpha=0.2;%网格线的透明度
%% 初始化文字信息
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