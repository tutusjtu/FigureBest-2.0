function handleMyAxes=modifyXYZTLabel(handleMyAxes,XYZT)
%   点击要修改的坐标区域，可以获得handleMyAxes=gco
%   XYZT为单行元胞数组，分别决定了坐标标签和标题的"内容"
set(handleMyAxes.XLabel,'Interpreter','latex');
set(handleMyAxes.YLabel,'Interpreter','latex');
set(handleMyAxes.ZLabel,'Interpreter','latex');
set(handleMyAxes.Title,'Interpreter','latex');
handleMyAxes.XLabel.String=XYZT{1};
handleMyAxes.YLabel.String=XYZT{2};
handleMyAxes.ZLabel.String=XYZT{3};
handleMyAxes.Title.String=XYZT{4};
end