#!/bin/bash

########################### set enveroment ############################
CURWDIR="$(cd $(dirname $0)&& pwd)"
cd $CURWDIR
if [ ! -f "$CURWDIR/env" ]; then
	echo gengrate env
	$CURWDIR/genenv.sh
fi
source $CURWDIR/env

cd $sh_file_dir

# 循环执行脚本目录中的脚本
case "$1" in
       "start")
               filelist=`ls $sh_file_dir | grep 'S.*\.sh'`;;
      *)
              filelist=`ls $sh_file_dir | grep 'D.*\.sh'`;;
esac

echo $filelist
for dir in $filelist
do
	echo "exec $sh_file_dir/$dir"
	$sh_file_dir/$dir
done

