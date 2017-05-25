#!/bin/ash
#copy files to shm and launch there to speed up iops.
cp -f * /work
cd /work
python /apps/test-page.py > /work/index.html
python /apps/launch-webserver.py


