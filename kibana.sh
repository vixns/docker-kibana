#!/bin/sh

if [ -n "$ELASTICSEARCH_URI" ]
then
  sed -i -e "s#^elasticsearch_url: .*\$#elasticsearch_url: \"${ELASTICSEARCH_URI}\"#g" /opt/kibana/config/kibana.yml	
fi

unset HOST
unset PORT

exec /opt/kibana/bin/kibana $@