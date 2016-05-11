#!/bin/sh

# Want to setup some config before start http
# For example, some app need APP_URL in config.ini.php
PRESTART=/var/www/html/prestart.sh
if [ -e $PRESTART ]; then
  echo "Running $PRESTART.." 
	chmod +x $PRESTART
	sync
	$PRESTART
fi

/usr/sbin/httpd -c "ErrorLog /dev/stdout" -DFOREGROUND
