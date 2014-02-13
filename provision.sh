#!/usr/bin/env bash

# Package install commands
apt-get update
apt-get install -y vim git npm nodejs apache2 php5 php5-cli php-pear php5-json php5-dev
apt-get autoremove -y

ln -s /usr/bin/nodejs /usr/bin/node

npm install -g bower less uglify-js jasmine-node

# Composer
curl -sS https://getcomposer.org/installer | php
mv -v composer.phar /bin/composer
chmod +x /bin/composer

# Phing
pear channel-discover pear.phing.info
pear install --alldeps phing/phing