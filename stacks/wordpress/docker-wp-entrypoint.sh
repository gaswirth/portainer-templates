#!/bin/bash

# Configure PHP for sendmail
echo "sendmail_path=sendmail -t -i" >> /usr/local/etc/php/conf.d/sendmail.ini

# Install sendmail
apt-get update && apt-get -y install sendmail
echo "127.0.0.1 $(hostname) localhost localhost.localdomain" >> /etc/hosts

# Get back to the default command...
exec apache2-foreground
