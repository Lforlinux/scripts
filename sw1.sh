#!/bin/sh
#script.sh sample shell script from the "unix book" page number *271*
echo "Today's date: `date`"
echo "This month's calendar:"
cal `date "+%m 20%y"`
echo "My shell: $SHELL" 
