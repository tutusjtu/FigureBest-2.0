function handleMyDraw=controlMatchElement(handleMyDraw,iColor,myLineType,myMarkerType,myco,idrawType)
if nargin==5
    idrawType=1;
end
switch  handleMyDraw.Type
    
    case 'line'             %控制线图 line:plot函数等
        if idrawType==1
            controlLineLightColor(handleMyDraw,myLineType,myMarkerType,myco,iColor);
        elseif idrawType==2
            controlLine(handleMyDraw,myLineType,myMarkerType,myco,iColor);
        else
            disp('在controlMatch中无此方案')
            return
        end
    case 'surface'          %三维面图
        if idrawType==1
            controlSurfaceLightColor(handleMyDraw,iColor);%绘制轻线条上色的条形图
        elseif idrawType==2
            controlSurfaceBoldNoColor(handleMyDraw,iColor);%绘制粗线条无颜色图
        else
            disp('在controlMatch中无此方案')
            return
        end
    case {'bar','histogram','text'}           %二维条形图
        if idrawType==1
            controlBarLightColor(handleMyDraw,iColor);%绘制轻线条上色的条形图
        elseif idrawType==2
            controlBarBoldNoColor(handleMyDraw,iColor);
        else
            disp('在controlMatch中无此方案');
            return
        end
    otherwise
        return
        disp('未针对当前图线做出特别优化')
end
end