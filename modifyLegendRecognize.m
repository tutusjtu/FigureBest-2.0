function handleLegend=modifyLegendRecognize(handleFigure)
% function handleLegend=modifyLegendRecognize(handleFigure)
% 输入图形句柄或者缺省
% 似乎输入句柄和输入iNumber等价
if nargin==0
    handleFigure=gcf;
end

%% 获得指定图例的句柄
%   获取Figure(句柄handleFigure)中的指定图例..
%   利用鼠标
handleMyAxes=findobj(get(handleFigure,'Children'),'flat','Type','axes');
handleLegend=findobj(get(handleFigure,'Children'),'flat','Type','Legend');
if  isempty(handleMyAxes)
    disp('没有axes')
    return
elseif  length(handleMyAxes)>1
    
    msgbox('你有“5秒钟”时间单击目标坐标轴');
    pause(6)
    if ~strcmp(get(gco,'Type'),'axes')
        
        msgbox('选择错误，请重新选择');
        return
    end
end


handleMyAxes=gca;

handleLegend=legend(handleMyAxes,'show');

if isempty(handleLegend)
    handleLegend=legend(handleMyAxes,'show');
    disp('图中无legend，已创建');
end
%%
%     myProperty=input('请输入目标图例上文字,以一行多列元胞数组的形式{'',''}: ');
%     handleLegend=findobj(get(handleFigure,'Children'),'flat','Type','Legend','String',myProperty);
%     if length(handleLegend)~=1
%         disp('有重复Legend，程序无法自动识别，已退出，请人为修改图例，并保证唯一性')
%         handleLegend=handleLegend(1);
%         return;
%     end
% elseif isempty(handleLegend)
%     disp('图中无legend，需要创建');
%
%     if length(handleMyAxes)>1
%         ihandleMyAxes=input('请输入创建图例的坐标轴序号： ');
%     else
%         ihandleMyAxes=1;
%     end
%     if ihandleMyAxes>length(handleMyAxes)
%         disp('没有这个坐标轴,退出程序')
%         return
%     end
%
%     gca=handleMyAxes(ihandleMyAxes)
%     handleLegend=legend(gca);
% end
%关闭所有对话框
close(findall(0,'tag','Msgbox_ '));
end