#!/bin/sh

# GZIP older than 1 day
export GZIP=-9
env GZIP=-9 find /var/log/ -mtime +1 | xargs  tar -czvPf  /var/log/older/logs_$$

# DELETE older than 1 day
find /var/log/ -mtime +1 | xargs  -n1 rm -rf
