%%  用法说明
%   =========================需要关注的问题=================================
%   1)关注dimentionControl矩阵，非自动化输入参量，决定了当前axes是2(默认)/3维。
%   2)调节三维图形的视角在Axes3DView函数中（目前只有单张图优化较好，因为图例在旋转）
%   =============================输出======================================
%   isOUT==0决定了图片不输出,改为1就会输出(默认输出为myFigureNmae.png)
%   更改输出的格式在myExportFigure改，比如分辨率，png?jpg?，保存的名字等
%   ============================怎么用=====================================
%   在 controlAxes函数中输入“标题，坐标轴的标签”等
%   调节”曲线线宽”在controlLine函数中
%   “图例”的大小在controlLegend中调节handleLegend.FontSize大小改变(MATLAB会自己调好位置)
%   单张图片已经最优，多张图片注意调节字体大小等参数，默认10Pt
%   已经存在的“图例”只会修改样式不会修改内容，可以保护内容
%   已经存在的用Latex语言写的文本不会被覆盖，但是样式不受Matlab控制，受Latex语法控制
%   已经完美支持的图类型：plot线图系列,bar,pie,histgram....
%   处理哪幅图？？
%% 您想处理哪一幅图？？？？
iNumber=1;%图片左上角数字
%% 定义全局变量，与controlAll()中同步更新
global isOut;                       %是否输出图片
global name;                        %输出图片名称
global iColor;                      %选择ColorOrder色系
global Dimention;                   %选择2/3维度绘图
global idrawType                    %以何种风格绘图1,2,3...
%................................   %更新中

%% 主要选择参数
isOut=1;                            %是否输出图片
name='color22style2';                %输出图片名称
iColor=42;                          %选择ColorOrder色系
Dimention=2;                        %选择2/3维度绘图
idrawType=2;                        %以何种风格绘图1,2,3...
...........................        %更新中
    %%  开始正式处理
controlAll(iNumber);
%function handleMyFigure=controlFigure(iNumber)