#!/usr/bin/python
import os, time, sys
os.system("apachectl start")
os.system("less -X /var/www/index.html")
j = 1
while 1:
    time.sleep(5)
    print j
    j += 1
    sys.stdout.flush()
