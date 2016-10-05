#! /bin/bash

LOGFILE="/var/log/httpd/bash-access-log"
EMAIL_FROM="admin@lforlinux.com"
EMAIL_TO="karthik.kln@gmail.com"
OUTPUT="/tmp/ip.txt"

cat /var/log/httpd/bash-access-log |  awk '{ print $1 } ' | sort | uniq -c | sed -r 's/^[ \t]*([0-9]+) (.*)$/\1 --- \2/' | sort -rn  >/tmp/ip.txt

echo  "`cat ${OUTPUT}`"|mail -s "Access-Log" -r "$EMAIL_FROM" "$EMAIL_TO";
exit 0
