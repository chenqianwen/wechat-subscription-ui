#!/bin/sh
set -e
if [ "$LOGIN_URL" ];
    then
    sed -i "s|LOGIN_URL|$LOGIN_URL|g" /usr/share/nginx/html/static/js/app.*.js
fi
if [ "$WEB_ROOT" ];
    then
    sed -i "s|WEB_ROOT|$WEB_ROOT|g" /usr/share/nginx/html/static/js/app.*.js
fi
if [ "$SOCKET_URL" ];
    then
    sed -i "s|SOCKET_URL|$SOCKET_URL|g" /usr/share/nginx/html/static/js/app.*.js
fi

nginx -g 'daemon off;'
