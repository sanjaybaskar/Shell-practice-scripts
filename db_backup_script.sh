
sudo apt install mysql-server

ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'root'; 
FLUSH PRIVILEGES; 

# A shell script to mysql database backup

#! /bin/bash

DB_NAME="my_database"

BACKUP_DIR="/path/to/backup"

DATE=$(date +%Y-%M-%D_%H-%M-%S) 

#Perform a database backup and copy it to backup directory

mysqldump -u root -p $DB_NAME > $BACKUP_DIR/$DB_NAME-$DATE.sql

echo "Database backup completed"


echo "this uis" > sample.txt