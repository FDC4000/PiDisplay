#!/bin/bash
# Script to add line to current users crontab
# to start PiDisplay script for OLED Display on RaspberryPi (Zero)
#
# Script based on: 
# https://askubuntu.com/questions/58575/add-lines-to-cron-from-script
# https://stackoverflow.com/questions/8579330/appending-to-crontab-with-a-shell-script-on-ubuntu
# Florian Fersch (2020)

# Backup crontab
crontab -l > /usr/bin/PiDisplay/crontab.$USER.$(date "+%Y.%m.%d-%H.%M.%S").bak

# Start script on every reboot
line="0 * * * *  /usr/bin/PiDisplay/monitor.sh >> /usr/bin/PiDisplay/cron.log 2>&1"
(crontab -u userhere -l; echo "$line" ) | crontab -u userhere -

