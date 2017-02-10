#!/bin/sh

########################### set enveroment ############################
CURWDIR="$(cd $(dirname $0)&& pwd)"
temp_dir=/tmp/gdyshi
config_file_dir=$CURWDIR/conf
sh_file_dir=$CURWDIR/sh  
setup_file_dir=$(cd $(dirname $CURWDIR)/../../tar;pwd)

