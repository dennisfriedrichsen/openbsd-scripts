#! /bin/sh

LOG_FILE=~/logs/postbuild_$(date +"%FT%T").log

cd /usr/src
date >> $LOG_FILE
doas sysmerge
cd /dev
doas ./MAKEDEV all
date >> $LOG_FILE