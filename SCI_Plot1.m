x = linspace(-2*pi,2*pi);
y1 = sin(x);
y2 = cos(x);


p1 = plot(x,y1,'->','MarkerIndices',1:3:length(y1));%每3个数据点标记一次
hold on
p2 = plot(x,y2,'-o','MarkerIndices',1:3:length(y2));%每3个数据点标记一次
p1(1).LineWidth = 2;%设置第一个线条的线宽为2磅
p2(1).LineWidth = 2;%设置第二个线条的线宽为2磅
p1(1).Color = [0.894117647058824	0.121568627450980 0.149019607843137];%对颜色进行设置
p2(1).Color = [0.192156862745098	0.498039215686275 0.717647058823529];%对颜色进行设置

% p(1).LineWidth = 2;%设置第一个线条的线宽为2磅
% p(2).Marker = '>';%设置第二个线条的标记marker为'>'
% p(2).LineWidth = 2;%设置第二个线条的线宽为2磅
% p(1).Color = [0.894117647058824	0.121568627450980 0.149019607843137];%对颜色进行设置
% p(2).Color = [0.192156862745098	0.498039215686275 0.717647058823529];%对颜色进行设置

ax = gca;
ax.XLabel.String = 'Time (\circC)';
ax.XLabel.FontSize = 12;
ax.XLabel.FontName = 'Arial';
ax.YLabel.String = 'Amplitude';
ax.YLabel.FontSize = 12;
ax.YLabel.FontName = 'Arial';


ax.YTick = -1.5:0.5:1.5;
ax.XTick = -2*pi:pi:2*pi;
ax.XTickLabel = {'-2\pi','-\pi','0','\pi','2\pi'};
ax.XLim = [-2*pi 2*pi];
ax.YLim = [-1.5 1.5];
ax.FontSize = 12;
ax.FontName = 'Arial';

lgd = legend('\it{P}_{\rm{ev}}\rm =100kPa','\it{P}_{\rm{ev}}\rm =200kPa');
lgd.NumColumns = 2;
lgd.Box = 'off';
lgd.FontSize = 12;
lgd.FontName = 'Arial';

%设置画布的大小以及在屏幕中间 位置
set(gcf,'Units','centimeters','Position',[1.4 10 16 10.5]) 
%设置坐标区图的大小和位置
set(gca,'Units','centimeters','Position',[2 1.2 12 9])
exportgraphics(gcf,'peaks.png','Resolution',300);%输出分辨率为300的PNG图片
exportgraphics(gcf,'peaks.pdf','ContentType','vector');%输出矢量pdf图片
exportgraphics(gcf,'peaks.eps');%输出矢量eps图片