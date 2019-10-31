#!/bin/sh
set -e
if [ ! -d /opt/magic_mirror/modules ]; then
	cp -R /opt/default_modules/. /opt/magic_mirror/modules
fi

if [ ! -f /opt/magic_mirror/config/config.js ]; then
	cp /opt/magic_mirror/mm-docker-config.js /opt/magic_mirror/config/config.js
fi

exec "$@"