% 函数曲线
t = 0:0.001:6;% 生成曲线的整体离散坐标值t
y = sin(1./(t-3));% 生成曲线的整体离散函数值y
% 子图部分
t1 = 2.8:0.001:3.2;% 生成曲线的局部离散坐标值t1
y1 = sin(1./(t1-3)); % 生成曲线的局部离散函数值y1

% 主图像
figure;% 生成新的图形窗口
plot(t,y);axis('equal'); % 绘制整体曲线图
grid on
% 红色矩形框
rectangle('Position',[min(t1) -1.2 max(t1)-min(t1) 2.4], 'EdgeColor', 'r')

% 子图像
H = axes('Position',[0.18,0.62,0.28,0.25]); % 生成子图
plot(t1,y1); % 绘制局部曲线图
xlim([min(t1),max(t1)]);% 设置坐标轴范围                                                               
set(H, 'XTick',[], 'YTick', []);

%% 另一种方法

clear;
clc;
close all;
t = 0:0.001:10;
y1 = sin(t);
  
figure(1);
plot(t,y1);
h1=axes('position',[0.4 0.45 0.2 0.3]);
axis(h1);
plot(h1, t(4600:4800),y1(4600:4800));
x = [0.5 0.5];
y = [0.15 0.4];
annotation('textarrow',x,y);

%% 仅局部放大绘图
N=20000;
i=1:1:N;
a=sqrt(100)*randn(1,N/4);
b=randn(1,N);
c=[a,b];
h1=plot(i,c(i),':.m','LineWidth',0.7);
legend(h1,'signal')
xlabel('t/s');ylabel('signal');
xlim([0,20000]); % 设置坐标轴范围  
ylim([-40,80]);
title('signal')
%生成局部放大图
axes('Position',[0.45,0.55,0.38,0.28]); % 生成子图   左右  上下 宽窄
plot(i,c(i),':.m','LineWidth',0.7);                                                                                                         
xlim([14000,15000]); % 设置坐标轴范围  
% ylim([140,200]);

%% 局部放大图片（ZoomPlot）
N=20000;
i=1:1:N;
a=sqrt(100)*randn(1,N/4);
b=randn(1,N);
c=[a,b];
h1=plot(i,c(i),':.m','LineWidth',0.7);
legend(h1,'signal')
xlabel('t/s');ylabel('signal');
xlim([0,20000]); % 设置坐标轴范围  
ylim([-40,80]);
title('signal')
zp = BaseZoom(); %放大图片,建议在命令行使用
zp.plot
%% 局部放大绘图加注释
N=20000;
i=1:1:N;
a=sqrt(100)*randn(1,N/4);
b=randn(1,N);
c=[a,b];
h1=plot(i,c(i),':.m','LineWidth',0.7);
xlabel('t/s');ylabel('signal');
xlim([0,20000]); % 设置坐标轴范围  
ylim([-40,80]);
title('signal')

%%%%%%%%%%%%%%%%%%%%画途中的两条绿线%%%%%%%
X1=8200; Y1=25;
X2=14000;Y2=5.5;
A=[X1,X2];B=[Y1,Y2];hold on;
h2=plot(A,B,'-g','LineWidth',1);
X1=18100; Y1=25;
X2=15000;Y2=5.5;
A=[X1,X2];B=[Y1,Y2];hold on;
h3=plot(A,B,'-g','LineWidth',1);
legend(h1,'signal')%仅标注信号图
%%%%%%%%%%%绿线会直接结束%%%%%%%%%%%%%%
%%%%%%%%绘制放大图%%%%%%%%%
hold on;
axes('Position',[0.45,0.55,0.38,0.28]); % 生成子图   左右  上下 宽窄
plot(i,c(i),':.m','LineWidth',0.7);                                                                                                         
xlim([14000,15000]); % 设置坐标轴范围  
% ylim([140,200]);
%%%%%%%%绘制放大图%%%%%%%%%
%%%%%%%%%%%%%%%%生成蓝色框%%%%%%%
annotation('rectangle',[0.67,0.34,0.04,0.08],'LineStyle','-','Color','b','LineWidth',0.7)