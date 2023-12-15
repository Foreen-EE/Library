%% 这里是演示数据的赋值
clc
clear
path_Figure = 'C:\知乎文章\';
if ~exist(path_Figure,'dir'); mkdir(path_Figure); end
WL_ref = 525; % nm
m_ref = 1.52;
B = (100:100:2000)';
WL = 400:1:1000;
%m = zeros(numel(B),numel(WL));
m = m_ref*ones(numel(B),numel(WL))+B.*(1./WL.^2-1/WL_ref^2);
%% 开始建立图窗
fig = figure('Name','Zhihu_plot_legend');
LW = 1.5; MS = 3; FS=12; % for laptop
color_str = rgbmap('baby pink','darkish green',numel(B));
le_str = cell(numel(B),1);
for ib = 1: numel(B)
    plot(WL,m(ib,:),'color',color_str(ib,:),'LineWidth',LW,'MarkerSize',MS)
    le_str{ib} = ['B = ',num2str(B(ib))];
    hold on
end
xlabel('\bfWavelength (nm)')
ylabel('\bfm')
set(gca,'FontSize',FS,'FontName','Times New Roman','FontWeight','bold','yaxislocation','left') 
set(gca,'linewidth',1.5)
%% 重点设置如下：
lgd = legend(le_str,'Location','northeastoutside','box','off');
lgd.Title.String = 'Factor'; % 给图例加标题
lgd.Title.FontSize = FS;     % 用数字指定标题的字体大小
lgd.FontSize = FS-2;         % 图例字体的大小
lgd.FontName = 'Times New Roman'; % 图例的字体
%% 保存图像
print(fig, [ path_Figure ,'ZhiHu_',num2str(date),'.png' ], '-dpng', '-r300')
saveas(gcf,[ path_Figure ,'ZhiHu_',num2str(date),'.fig' ],'fig')
close(fig)