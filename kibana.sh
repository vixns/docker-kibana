#!/bin/sh

if [ -z "$ELASTICSEARCH_URI" ]
then
  # ask consul
  export ELASTICSEARCH_URI="http://$(dig-srv ${ELASTICSEARCH_FQDN-elasticsearch.service.consul} | awk -F',' '{print $1}')"
fi

sed -i -e "s#^elasticsearch_url: .*\$#elasticsearch_url: \"${ELASTICSEARCH_URI}\"#g" /opt/kibana/config/kibana.yml

unset HOST
unset PORT

exec /opt/kibana/bin/kibana