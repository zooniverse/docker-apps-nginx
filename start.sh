#/bin/bash -e

python3 gen-cf-conf.py

exec /usr/bin/supervisord
