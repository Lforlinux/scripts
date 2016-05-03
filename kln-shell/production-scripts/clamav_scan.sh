#!/bin/bash

LOGFILE="/var/log/clamav/clamav-$(date +'%Y-%m-%d').log";
EMAIL_MSG="Please see the log file attached.";
EMAIL_FROM="root@ubuntutest90.em.com";
EMAIL_TO="Lekshminarayanan.Kolappan@emeriocorp.com,karthik.kln@gmail.com,karthik.kln@icloud.com";
DIRTOSCAN="/";

# Update ClamAV database
echo "Looking for ClamAV database updates...";
freshclam --quiet;

TODAY=$(date +%u);

if [ "$TODAY" == "5" ];then
echo "Starting a full weekend scan.";

# be nice to others while scanning the entire root
nice -n5 clamscan -ri / --exclude-dir=/sys/ &>"$LOGFILE";
else
DIRSIZE=$(du -sh "$DIRTOSCAN" 2>/dev/null | cut -f1);

echo "Starting a daily scan of "$DIRTOSCAN" directory.
Amount of data to be scanned is "$DIRSIZE".";

clamscan -ri "$DIRTOSCAN" &>"$LOGFILE";
fi


#Sending the Scan-summary email-log
#echo "$EMAIL_MSG"|mail -a "$LOGFILE" -s "Scan-summary" -r "$EMAIL_FROM" "$EMAIL_TO";
echo  "`cat ${LOGFILE}`"|mail -s "Scan-summary" -r "$EMAIL_FROM" "$EMAIL_TO";
exit 0

