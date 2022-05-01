function Axes3DView(handleMyAxes)
%控制视角、坐标轴平行等
%目前这些参数对1个图优化较好
set(handleMyAxes,'View',[45 15]);
handleMyAxes.XLabel.Rotation=-16;
handleMyAxes.YLabel.Rotation=16;
handleMyAxes.ZLabel.Rotation=90;
handleMyAxes.XLabel.HorizontalAlignment='right';
handleMyAxes.YLabel.HorizontalAlignment='left';
handleMyAxes.ZLabel.HorizontalAlignment='center';
handleMyAxes.ZGrid='off';
handleMyAxes.YLabel.VerticalAlignment='bottom';
end
