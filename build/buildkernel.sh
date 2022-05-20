#! /bin/sh

LOG_FILE=~/logs/buildkernel_$(date +"%FT%T").log

cd /sys/arch/$(machine)/compile/GENERIC.MP
date >> $LOG_FILE
nohup doas time make obj >> $LOG_FILE
nohup doas time make config >> $LOG_FILE
nohup doas time make >> $LOG_FILE
nohup doas time make install >> $LOG_FILE
date >> $LOG_FILE
