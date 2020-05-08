#!/bin/bash
SHELL_PATH=`pwd -P`
LOG_PATH=$SHELL_PATH/logs
NGINX_LOG_PATH=$LOG_PATH/nginx_log
TOMCAT_1_LOG_PATH=$LOG_PATH/tomcat_log1
TOMCAT_2_LOG_PATH=$LOG_PATH/tomcat_log2
mkdir $LOG_PATH
mkdir $NGINX_LOG_PATH
mkdir $TOMCAT_1_LOG_PATH
mkdir $TOMCAT_2_LOG_PATH

docker volume create \
    --name nginx_log \
    --opt type=none \
    --opt device=NGINX_LOG_PATH \
    --opt o=bind
docker volume create \
    --name tomcat_log1 \
    --opt type=none \
    --opt device=TOMCAT_1_LOG_PATH \
    --opt o=bind
docker volume create \
    --name tomcat_log2 \
    --opt type=none \
    --opt device=TOMCAT_2_LOG_PATH \
    --opt o=bind