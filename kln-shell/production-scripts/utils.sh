#!/bin/bash
#This script is to check Mysql Service Status
#/usr/local/nagios/libexec/utils.sh
{
Status=`sudo service mysql status |awk '{print $3}'`
if [ "$Status" == "running" ];then
 {
                echo "SUCCESS : Mysql is working fine"
                exitstatus=$STATE_OK
                exit $exitstatus

        }

echo " MYSQL is OK"
retval=0;
else
 {
                echo "CRITICAL : MYSQL service is STOPPED"
                exitstatus=$STATE_CRITICAL
                exit $exitstatus

        }

retval=2;
fi

}
