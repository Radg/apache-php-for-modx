#/bin/bash

set -e

# Remove pre-existing pid file:
rm -f /var/run/apache2/apache2.pid

umask 002

# and start apache2:
exec apache2ctl -DFOREGROUND