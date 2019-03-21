FROM splunk/splunk:latest
USER root
LABEL maintainer "sonnyyuirm@gmail.com"
RUN ln -fs /usr/share/zoneinfo/America/Los_Angeles /etc/localtime
RUN dpkg-reconfigure -f noninteractive tzdata
COPY inputs.conf /opt/splunk/etc/apps/launcher/local/inputs.conf
COPY ginputs.conf /opt/splunk/etc/apps/splunk_httpinput/local/inputs.conf
ADD splunk-stream_712.tgz  /opt/splunk/etc/apps
ADD install.sh  /opt/splunk/etc/apps
#ADD https://www.dropbox.com/s/v0gbyigaqxlq1de/splunk-stream_712.tgz /opt/splunk/etc/apps
#RUN /opt/splunk/etc/apps/Splunk_TA_stream/set_permissions.sh
#ADD tainputs.conf /opt/splunk/etc/apps/Splunk_TA_stream/local/inputs.conf
#COPY install.sh /opt/splunkforwarder/etc/apps/install.sh