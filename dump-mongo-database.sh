#!/bin/sh
# A Script to dump mongo databses to tempdir
# Useful for automated backup
# Need to add your own Username and password, or ommit them if mongodump doesnt need them
timestamp=$(date "+%Y_%m_%d")
echo "dumping database $1 to /tmp/dump_$1"
rm -rf /tmp/dump_$1
mkdir /tmp/dump_$1
mongodump  --username="<USERNAME>" --password="<PASSWORD>"  --authenticationDatabase="admin" --archive="/tmp/dump_$1/dump_$timestamp.mongodump" --db="$1"
echo "done dumping database $1"
