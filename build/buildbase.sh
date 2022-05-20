#! /bin/sh

LOG_FILE=~/logs/buildbase_$(date +"%FT%T").log

cd /usr/src
date >> $LOG_FILE
nohup doas time make obj >> $LOG_FILE
nohup doas time make build >> $LOG_FILE
date >> $LOG_FILE