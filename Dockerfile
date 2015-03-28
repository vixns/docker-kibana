FROM vixns/base
MAINTAINER Stéphane Cottin <stephane.cottin@vixns.com>

ENV KIBANA_VERSION 4.0.1

RUN curl -s -k -o /tmp/kibana.tar.gz https://download.elasticsearch.org/kibana/kibana/kibana-${KIBANA_VERSION}-linux-x64.tar.gz
RUN tar xfz /tmp/kibana.tar.gz -C /opt && rm /tmp/kibana.tar.gz && mv /opt/kibana-${KIBANA_VERSION}-linux-x64 /opt/kibana
ADD kibana.sh /usr/local/bin/kibana.sh
EXPOSE 5601
ENTRYPOINT ["/usr/local/bin/kibana.sh"]