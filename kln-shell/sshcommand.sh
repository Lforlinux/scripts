#!/bin/sh
for s in clofcgmail{1,2}.cl.office.comodo.net mmmail{1,2}.mcr.colo.comodoca.net;   
do  echo ${s}; ssh -l root ${s} "wc -l /etc/passwd; wc -l /etc/shadow; wc -l /etc/gshadow; wc -l /etc/group;"  
done
