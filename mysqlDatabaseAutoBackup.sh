mysqldump -u admin -p yourpassword databaseName | gzip > /opt/backup/data/data_bk/databaseName_$(date +\%Y\%m\%d_\%H\%M\%S).sql.gz
find /opt/backup/ -mtime +30 -name '*.sql.gz' -exec rm -rf {} \;
