function myExportFigure(handleMyFigure,name,format)
if nargin==1
    name='myFigureName';
    format='-dpng';
elseif nargin==2
    format='-dpng';
end
%%  输出高质量的图片
%   将句柄为handleMyFigure的
%   图形窗口figure以
%   myFigureNmae的名字保存,文件格式png;
%   可选格式
%   '-dpdf'	整页可移植文档格式 (PDF) 颜色	.pdf
%   '-deps'	PostScript (EPS) 3 级黑白	.eps
%   '-depsc'	封装的 PostScript (EPS) 3 级彩色	.eps
%   '-deps2'	封装的 PostScript (EPS) 2 级黑白	.eps
%   '-depsc2'	封装的 PostScript (EPS) 2 级彩色	.eps
%   '-dmeta'	增强的图元文件（仅限 Windows?）.emf
%   '-dsvg'	SVG（可伸缩向量图）	.svg
%   '-dps'	全页 PostScript (PS) 3 级黑白	.ps
%   '-dpsc'	全页 PostScript (PS) 3 级彩色	.ps
%   '-dps2'	全页 PostScript (PS) 2 级黑白	.ps
%   '-dpsc2'	全页 PostScript (PS) 2 级彩色	.ps
%   分辨率600dpi
%   -painters 代表生成矢量图 opengl位图
%%

nameappend=strcat(name,num2str(fix(rand*rand*10000)),...
    num2str(fix(rand*rand*10000)));
print(handleMyFigure,nameappend,'-r800',format,'-opengl');
fid = fopen('name_append.txt','w+');
fprintf(fid,'%s\n',nameappend);
fclose(fid);
end