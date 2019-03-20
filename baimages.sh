#!/bin/sh

# baimages
# dms/ssq/19.03.2019
# checks for new images every minute using imapfiles

while true; do
    echo $(date +"%T"): Checking...
    ./imapfiles.py -c imapfiles.cfg
    sleep 120
done

# end
