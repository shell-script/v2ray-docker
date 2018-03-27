#!/bin/bash

php-fpm7.0 --daemonize --fpm-config /etc/php/7.0/fpm/php-fpm.conf
sed -i "s/CLIENT_ID/$CLIENT_ID/g" /etc/v2ray/config.json
sed -i "s/CLIENT_ALTERID/$CLIENT_ALTERID/g" /etc/v2ray/config.json
sed -i "s#CLIENT_WSPATH#$CLIENT_WSPATH#g" /etc/v2ray/config.json
sed -i "s#CLIENT_WSPATH#$CLIENT_WSPATH#g" /etc/nginx/conf.d/default.conf
v2ray -config=/etc/v2ray/config.json &
nginx -g 'daemon off;'