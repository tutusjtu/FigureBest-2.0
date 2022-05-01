function handleLegend=modifyLegend(iNumber,isVisible,myFontSize)
%%  在给定figure中修改一个图例的样式，且可以控制图例是否显示
%   iNumber是图片左上角的数字
%   可以仅修改图例的一些信息；如果不存在，将自动*创建一个（可选）
%   在figure层面来修饰指定的图例
%   只修改图例，而不修改其他值
if nargin==0
    iNumber=get(gcf,'Number');
    isVisible='on';
    myFontSize=10;
elseif  nargin==1
    isVisible='on';
    myFontSize=12;
elseif nargin==2
    myFontSize=12;
end
handleFigure=findobj('Type', 'figure','Number',iNumber);

%% 返回需要操作的图例句柄，如果没有就是返回创建后的句柄。
handleLegend=modifyLegendRecognize(handleFigure)%基于鼠标点击

%% 对Legend的详细操控
%
%设置图例的排布方式
%！！！！图例的位置相对于figure而不是相对于axes的！！！！
handleLegend.Location='northeast';      %图例方位
handleLegend.Orientation='vertical';    %图例垂直排布
handleLegend.NumColumns=1;              %图例列数
%handleLegend.Position(3)=0.1;          %只改变图例宽度
handleLegend.FontName='Arial';
handleLegend.FontSize=myFontSize;
handleLegend.LineWidth=0.5;
handleLegend.Box='on';
handleLegend.Visible=isVisible;
shg
end
