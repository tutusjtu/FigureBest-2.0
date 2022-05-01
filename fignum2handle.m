function figHandle=fignum2handle(figNum)
%%	此函数将图形左上角的数字转换为图形句柄输出
%	function figHandle=figNumtofigHandle(figNum)
%   figNum是标量数字

if nargin==0 & ~isempty(get(groot,'CurrentFigure'))
    figHandle=gcf;
    warning('未找到图片，处理您的当前图片');
    return
elseif nargin==0 & isempty(get(groot,'CurrentFigure'))
    warndlg('不存在任何图片!');
    return
end

%% 主要的程序代码
figHandle=findall(groot,'Type','figure','Number',figNum);
if isempty(figHandle)
    warndlg('未找到!');
    figHandle.delete;
end
end