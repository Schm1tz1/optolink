#!/bin/bash

#
# in crontab, do something like: * * * * * /path/to/script
#

service=optolink

if (( $(ps -ef | grep -v grep | grep $service | wc -l) > 0 ))
then
    echo "$service is running!!!"
else
    ./start.sh
fi