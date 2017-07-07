#!/bin/bash -e
/usr/bin/rsync -rlDvcC --progress --chmod=Du+w /var/lib/jenkins/workspace/bash.lforlinux.com/* /home/bash/scripts
