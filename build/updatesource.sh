#! /bin/sh

LOG_FILE=~/logs/buildworld_$(date +"%FT%T").log

cd /usr/src
date >> $LOG_FILE
doas time cvs -q up -Pd -A
date >> $LOG_FILE