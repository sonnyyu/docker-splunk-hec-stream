docker exec -it docker-splunk /bin/bash -c "/opt/splunk/etc/apps/install.sh"

docker exec -it docker-universalforwarder /bin/bash -c "/opt/splunkforwarder/etc/apps/install.sh"

docker-compose config

wget https://www.dropbox.com/s/v0gbyigaqxlq1de/splunk-stream_712.tgz -O ~/docker-splunk-hec-stream/splunk/splunk-stream_712.tgz

docker-compose up --build

docker-compose stop

docker-compose up -d

docker logs splunk

docker-compose down

docker container prune -f

docker image prune -a -f

docker volume prune -f

docker network prune -f

docker system prune -f

sudo rm -rf /var/lib/docker/volumes/*

docker exec -it docker-splunk /bin/bash

curl -k  https://10.145.89.1:8088/services/collector/event -H "Authorization: Splunk 3f066d2a-c871-4800-87fc-e6be5fa69f1b" -d '{"event": "hello world"}'

{"text": "Success", "code": 0}

docker exec -it docker-splunk /bin/bash -c /opt/splunk/etc/apps/Splunk_TA_stream/set_permissions.sh

docker exec -it docker-splunk /bin/bash -c "sed -i 's|disabled = 0|disabled = 1|g' /opt/splunk/etc/apps/Splunk_TA_stream/local/inputs.conf"

docker exec -it docker-splunk /bin/bash -c  "cat /opt/splunk/etc/apps/Splunk_TA_stream/local/inputs.conf"

docker exec -it docker-splunk /bin/bash
/opt/splunk/etc/apps/Splunk_TA_stream/set_permissions.sh
cd /opt/splunk/etc/deployment-apps
tar -cvzf  Splunk_TA_stream.tgz Splunk_TA_stream
mv Splunk_TA_stream.tgz /opt/splunk/etc/apps/search/appserver/static/
/opt/splunk/bin/splunk  restart

docker exec -it docker-universalforwarder /bin/bash
wget http://docker-splunk:8000/en-US/static/app/search/Splunk_TA_stream.tgz
/opt/splunkforwarder/bin/splunk install app /Splunk_TA_stream.tgz -auth admin:password
/opt/splunkforwarder/bin/splunk add forward-server docker-splunk:9997 -auth admin:password
/opt/splunkforwarder/etc/apps/Splunk_TA_stream/set_permissions.sh
/opt/splunkforwarder/bin/splunk restart



 
