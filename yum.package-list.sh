#!/bin/bash
##################################################
# Name: yum-package-list.sh
# Description: This script generates the package list then you can pipe this list into yum.
# Script Maintainer: Lekshminarayan K (KLN)
#
# Last Updated: May-03-2016
##################################################
# Simple One Liner
rpm -qa --qf %{NAME}\ > /var/tmp/packageLitst.txt
# EOF
