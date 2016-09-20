#/bin/bash

# Remove pre-existing pid file:
rm -f /var/run/apache2/apache2.pid

# and start apache2:
apache2 - DFOREGROUND
