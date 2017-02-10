#!/bin/sh
cd $temp_dir
sudo tar zxf $setup_file_dir/phddns_raspberry.tgz
phddns=phddns2
cd $phddns
sudo ./oraynewph start
cd ..
sudo rm $phddns -rf
