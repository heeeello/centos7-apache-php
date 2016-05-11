## base Docker images for centos7-apache-php

Apache 2.4 and PHP 5.4, built on CentOS 7

Changes to original image

1. /etc/localtime to Asia/Shanghai
2. date.timezone in /etc/php.ini
3. Enable `AllowOverride All` for /var/www/html 
