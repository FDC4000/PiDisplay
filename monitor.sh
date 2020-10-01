#!/bin/sh
cd /usr/bin/PiDisplay/
sudo python3 ./monitor.py >> monitor.log 2>&1
#sudo python3 /usr/bin/PiDisplay/monitor.py >> /usr/bin/PiDisplay/monitor.log 2>&1
