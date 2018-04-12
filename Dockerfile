FROM docker.elastic.co/kibana/kibana-oss:6.2.3
RUN /opt/kibana/bin/kibana-plugin install https://github.com/sirensolutions/sentinl/releases/download/tag-6.2.3-2/sentinl-v6.2.3.zip
