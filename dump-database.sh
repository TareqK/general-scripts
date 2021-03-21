#!/bin/bash
# A Script that dumps a MYSQL/MariaDB Database to tmp
# Useful for dumps to use in automated backups
# Need to Replace <DUMP_USER> and <DUMP_PASSWORD>
timestamp=$(date "+%Y_%m_%d")
echo "dumping database $1 to /tmp/dump_$1"
rm -rf /tmp/dump_$1
mkdir /tmp/dump_$1
mysqldump  --add-drop-table --create-options --dump-date --user=<DUMP_USER> --password="<DUMP_PASSWORD>" $1  > /tmp/dump_$1/dump_$timestamp.sql 
echo "done dumping database $1"
