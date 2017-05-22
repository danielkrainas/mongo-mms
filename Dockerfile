FROM ubuntu:latest

ADD https://cloud.mongodb.com/download/agent/monitoring/mongodb-mms-monitoring-agent_5.7.0.368-1_amd64.ubuntu1604.deb /mongodb-mms-monitoring-agent_4.1.0.251-1_amd64.ubuntu1604.deb
RUN dpkg -i /mongodb-mms-monitoring-agent_5.7.0.368-1_amd64.ubuntu1604.deb

WORKDIR /

ADD docker-entrypoint.sh /entrypoint.sh
RUN chmod u+x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
