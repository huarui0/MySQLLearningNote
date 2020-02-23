01
 
@echo off
 
02
 
:: 指定MySQL安装路径
 
03
 
E:
 
04
 
cd E:\Installs\Oracle\Softwares\Database\MySQL\mysql-5.6.13-winx64\bin
 
05
 
:: 数据库名称
 
06
 
@set db=menageie
 
07
 
:: 用户名
 
08
 
@set userName=root
 
09
 
:: 密码
 
10
 
@set password=
 
11
 
:: 要执行的sql脚本
 
12
 
@set sqlpath=E:\Installs\Oracle\Softwares\Database\MySQL\my_script\sqlscript_test.sql
 
13
 
:: 连接MySQL数据库并执行sql脚本 -f 脚本执行过程中，出现错误继续执行 --default-character-set指定导入数据的编码（与数据库编码相同）
 
14
 
mysql -f -u %userName% --password=%password% %db% < %sqlpath% --default-character-set=gbk
 
15
 
:: 执行完成后，不立刻关闭dos窗口
 
16
 
pause