#!/usr/bin/env sh
set -eu

envsubst '${PORT}' < /etc/nginx/nginx.template.conf > /etc/nginx/nginx.conf

exec "$@"