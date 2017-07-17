#!/bin/ash
#copy files to shm and use this as webroot for the performance gain.
cp -f * /work
cd /work
python /apps/test-page.py > /work/index.html
python /apps/launch-webserver.py


