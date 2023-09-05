#!/bin/bash/

cd ~
if [ ! -f /usr/share/nginx/homer/assets/config.yml ];
then
wget "https://github.com/bastienwirtz/homer/releases/latest/download/homer.zip"
unzip homer.zip -d /usr/share/nginx/homer
chown www-data:www-data /usr/share/nginx/homer/ -R
cp /usr/share/nginx/homer/assets/config.yml.dist /usr/share/nginx/homer/assets/config.yml
rm homer.zip
fi
service nginx start
tail -f /dev/null