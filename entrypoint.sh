#!/bin/sh

exec 2>&1
set -e

# Exporting the java path


# Setting up ElasticSearch
sed    -i     's/es_cluster/$ES_CLUSTER_NAME/'          /etc/elasticsearch/elasticsearch.yml
sed    -i     's/es_data_path/$ES_DATA_PATH/'           /etc/elasticsearch/elasticsearch.yml
sed    -i     's/es_log_path/$ES_LOG_PATH/'             /etc/elasticsearch/elasticsearch.yml
sed    -i     's/es_network_host/$ES_NETWORK_HOST/'     /etc/elasticsearch/elasticsearch.yml
sed    -i     's/es_http_port/$ES_HTTP_PORT/'           /etc/elasticsearch/elasticsearch.yml
sed    -i     's/es_unicast/$ES_UNICAST/'               /etc/elasticsearch/elasticsearch.yml

# Starting the elasticsearch
exec   
