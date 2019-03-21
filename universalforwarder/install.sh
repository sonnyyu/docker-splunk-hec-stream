#!/bin/bash
set -x
wget http://docker-splunk:8000/en-US/static/app/search/Splunk_TA_stream.tgz
/opt/splunkforwarder/bin/splunk install app /Splunk_TA_stream.tgz -auth admin:password
/opt/splunkforwarder/bin/splunk add forward-server docker-splunk:9997 -auth admin:password
/opt/splunkforwarder/etc/apps/Splunk_TA_stream/set_permissions.sh
/opt/splunkforwarder/bin/splunk restart
tail /opt/splunkforwarder/var/log/splunk/streamfwd.log
