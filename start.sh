#!/bin/bash
#exec &>>/var/log/work.log

while true
do

SERVICE0='server.py'

if ps ax | grep -v grep | grep $SERVICE0 > /dev/null
then
    echo "$SERVICE0 service running "
else
    echo there is no such "$SERVICE0 service, starting"
    python /usr/local/bin/server.py
fi




sleep 10
done
