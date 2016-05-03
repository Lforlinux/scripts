#!/bin/bashi
/bin/date "+%H-%M-%S_%d-%m-%Y" | tee /tmp/curtime.txt
history -a /home/history/`cat /tmp/curtime.txt`_history.txt
