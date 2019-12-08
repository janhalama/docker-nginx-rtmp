#!/usr/bin/env sh
set -eu

echo Configuring nginx http port to: ${PORT}
envsubst '${PORT}' < /etc/nginx/nginx.template.conf > /etc/nginx/nginx.conf

exec "$@"