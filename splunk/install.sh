#!/bin/bash
/bin/bash /opt/splunk/etc/apps/Splunk_TA_stream/set_permissions.sh
cd /opt/splunk/etc/deployment-apps
tar -cvzf  Splunk_TA_stream.tgz Splunk_TA_stream
mv Splunk_TA_stream.tgz /opt/splunk/etc/apps/search/appserver/static/
/opt/splunk/bin/splunk  restart
