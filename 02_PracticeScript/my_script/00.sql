01
 
@echo off
 
02
 
:: ָ��MySQL��װ·��
 
03
 
E:
 
04
 
cd E:\Installs\Oracle\Softwares\Database\MySQL\mysql-5.6.13-winx64\bin
 
05
 
:: ���ݿ�����
 
06
 
@set db=menageie
 
07
 
:: �û���
 
08
 
@set userName=root
 
09
 
:: ����
 
10
 
@set password=
 
11
 
:: Ҫִ�е�sql�ű�
 
12
 
@set sqlpath=E:\Installs\Oracle\Softwares\Database\MySQL\my_script\sqlscript_test.sql
 
13
 
:: ����MySQL���ݿⲢִ��sql�ű� -f �ű�ִ�й����У����ִ������ִ�� --default-character-setָ���������ݵı��루�����ݿ������ͬ��
 
14
 
mysql -f -u %userName% --password=%password% %db% < %sqlpath% --default-character-set=gbk
 
15
 
:: ִ����ɺ󣬲����̹ر�dos����
 
16
 
pause