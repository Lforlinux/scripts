#!/bin/bash
##################################################
# Name: basic-info.sh
# Description: Grabs basic info about the server
# Script Maintainer: Jacob Amey
#
# Last Updated: July 9th 2013
##################################################
# 
echo "Info about the server:" > /var/tmp/Info.txt
echo "##############################" >> /var/tmp/Info.txt
uname -a >> /var/tmp/Info.txt
echo "##############################" >> /var/tmp/Info.txt
cat /etc/sysconfig/network-scripts/ifcfg-eth0 >> /var/tmp/Info.txt
echo "##############################" >> /var/tmp/Info.txt
route >> /var/tmp/Info.txt
echo "##############################" >> /var/tmp/Info.txt
