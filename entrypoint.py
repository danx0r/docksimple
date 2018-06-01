#!/usr/bin/python
import os, time, sys
os.system("a2enmod ssl; a2ensite default-ssl; apachectl start")

cmd = "tail -fc 50000 /var/log/apache2/access.log /var/log/apache2/error.log"
os.system(cmd)
