rem MySQL_HOME ����MySQL�İ�װ·��
rem host mysql ��������ip��ַ�������Ǳ��أ�Ҳ������Զ��
rem port mysql �������Ķ˿ڣ�ȱʡΪ3306
rem user password ���в������ݿ�Ȩ�޵��û��������룬��root
rem default-character-set ���ݿ����õ��ַ���
rem database Ҫ���ӵ��������������õ�qc1
rem test.sql Ҫִ�еĽű��ļ�������Ϊmysql.sql
rem mysql �����Ӧ�÷���һ�С�
set MySQL_HOME=D:\database\MySQL\MySQL Server 5.1
set PATH=%MySQL_HOME%\bin;%PATH%
mysql --host=localhost --port=3306 --user=root --password=sa --default-character-set=utf8 qc1 < mysql.sql
pause