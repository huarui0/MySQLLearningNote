#vi mysql_full_bak.sh
#!/bin/bash
# ����ȫ���ݣ�һ��ȫ����һ���ļ��У�һ����һ���ļ��У�һ����һ���ļ������ݱ���3�죬�Ƴ�3��ǰ�ı���
# 2014-04-04
# wangyu

user=root  
passwd=
databak_dir=/data1/mysql/data/backup/
DATE=`date +%Y%m%d`
logFile=$databak_dir/logs/mysql$DATE.log
database=factdb
cd /data
dumpFile=$database$DATE.sql
#GZDumpFile=$database$DATE.tar.gz
options="-u$user -p$passwd --opt --extended-insert=false --triggers=false -R --hex-blob --flush-logs --delete-master-logs -B $database"
mysqldump $options > $dumpFile  #���������ļ�
if [[ $? == 0 ]]; then
  #tar cvzf $GZDumpFile $dumpFile >> $eMailFile 2>&1
  #echo "BackupFileName:$GZDumpFile" >> $eMailFile
  #echo "DataBase Backup Success" >> $eMailFile
  #scp $GZDumpFile ��ַ��:/Dir   #���ͱ����ļ�����һ̨���������Ҫ����ssh����
  #rm -f $dumpFile           #ɾ�����ݵ��ļ�
  #rm �Crf $databak_dir/daily/*  #ɾ��ÿ�챸�ݵ��ļ�
  echo "$DATE ���ݳɹ�"
else
  #echo "DataBase Backup Fail!" >> $emailFile
  #mail -s " DataBase Backup Fail " $eMail < $eMailFile  #������ݲ��ɹ������ʼ�֪ͨ
  echo "$DATE ����ʧ��" >> $logFile
fi

#cat $eMailFile >> $logFile