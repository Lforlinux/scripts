#!/bin/bash -e
/usr/bin/rsync -rlDvcC --progress /var/lib/jenkins/workspace/bash.lforlinux.com/* /home/kln/GIT/scripts
