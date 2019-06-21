#!/bin/sh

/usr/sbin/crond -b

/usr/local/openresty/bin/openresty -g "daemon off;"
