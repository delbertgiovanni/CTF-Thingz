#!/bin/sh
echo "* * * * * cat /dev/null > /var/log/apache2/access.log" | crontab
