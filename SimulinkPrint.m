% 在matlab command window中键入下面命令
model_name %刚刚你保存mdl文件的名字，打开mdl 文件
print('-smodel_name', '-dtiff', 'picture_name')
% -s 后面接的也是你保存文件的名字
%第二个参数是保存的类型 tiff bitmap …
%第三个参数是保存图片的名字 欧了，对了可以看看print 的doc 还可以设置分辨率啥的。