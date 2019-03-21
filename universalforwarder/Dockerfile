FROM splunk/universalforwarder
USER root
LABEL maintainer "sonnyyuirm@gmail.com"
RUN ln -fs /usr/share/zoneinfo/America/Los_Angeles /etc/localtime
RUN dpkg-reconfigure -f noninteractive tzdata
COPY install.sh /opt/splunkforwarder/etc/apps/install.sh