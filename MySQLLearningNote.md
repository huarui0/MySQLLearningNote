# MySQL Learning Note

## 安装与配置




## 备份与恢复
   * 备份
      + 
      + 步骤
         1. 连接数据库
            - 注意事项
               * 连接数据库前，要更改my.cnf（my.ini in widonws system)，将datadir参数（如：datadir=D:/MySqlDataDev/data_8.0.1）更改为要**导出**数据的数据库文件夹
               * 用于启动数据库的mysql server app，版本要与原来创建数据库的版本一致
         2. 执行导出脚本
         ```bash
             cd D:\MySQLDataDmp
             mysqldump -u root -p --databases jira > databases_jira.sql
         ```
   * 恢复
      + 
      + 步骤
         1. 连接数据库
            - 注意事项
               * 连接数据库前，要更改my.cnf（my.ini in widonws system)，将datadir参数（如：datadir=D:/MySqlDataDev/data_8.0.1）更改为要**导入**数据的数据库文件夹
               * 用于启动数据库的mysql server app，版本要与要导入的数据库的版本一致
         2. 创建与要导入的数据库的空数据库，如：
         ```sql
            CREATE DATABASE jira;
            commit;
         ```
         3. 执行导入脚本
         ```bash
             mysql -u root -p jira < D:\MySQLDataDmp\databases_jira.sql;
         ```
## MySQL 与 MacOS
   * 原来安装的Mysql备忘
      + 开机启动 - 卸载脚本 参考：XMind文档：自动启动程序的方法
      ```bash
          sudo launchctl unload com.oracle.oss.mysql.mysqld.plist
      ```
      ```bash
         # 永久卸载
         sudo launchctl unload -w com.oracle.oss.mysql.mysqld.plist
      ```
      + 原启动脚本
      ```bash
          /usr/local/mysql/bin/mysqld --user=_mysql --basedir=/usr/local/mysql --datadir=/usr/local/mysql/data --plugin-dir=/usr/local/mysql/lib/plugin --log-error=/usr/local/mysql/data/mysqld.local.err --pid-file=/usr/local/mysql/data/mysqld.local.pid --keyring-file-data=/usr/local/mysql/keyring/keyring --early-plugin-load=keyring_file=keyring_file.so   
     ```
