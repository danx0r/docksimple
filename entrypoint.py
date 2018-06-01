#!/usr/bin/python
import os, time, sys
os.system("apachectl start")
j = 1
while 1:
    time.sleep(5)
    print j
    j += 1
    sys.stdout.flush()
