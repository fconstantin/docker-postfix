#!/bin/sh

# Run postfix
rm -f /var/run/rsyslogd.pid
exec rsyslogd -n