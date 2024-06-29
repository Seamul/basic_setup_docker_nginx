#!/bin/sh
envsubst < /opt/app-root/etc/nginx.d/app.conf.template > /opt/app-root/etc/nginx.d/app.conf
nginx -g 'daemon off;'
