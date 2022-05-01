function handleLegend=controlLegend(handleLegend,isVisible)
if nargin==1
    isVisible='on';
end
%设置图例的排布方式
%！！！！图例的位置相对于figure而不是相对于axes的！！！！
handleLegend.Location='northeast';      %图例方位
handleLegend.Orientation='vertical';    %图例垂直排布
% handleLegend.NumColumns=1;              %图例列数
%handleLegend.Position(3)=0.1;          %只改变图例宽度
handleLegend.FontName='Arial';
handleLegend.FontSize=12;
handleLegend.LineWidth=1.5;
handleLegend.Box='on';
handleLegend.Visible=isVisible;
return
end