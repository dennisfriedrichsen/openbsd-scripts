#! /bin/sh

LOG_FILE=~/logs/buildworld_$(date +"%FT%T").log

cd /usr/src
date >> $LOG_FILE
nohup doas time cvs -q up -Pd -A >> $LOG_FILE
date >> $LOG_FILE