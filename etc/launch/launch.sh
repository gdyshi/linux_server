#!/bin/sh

########################### set enveroment ############################
current_run_dir=$(cd "$(dirname "$0")";pwd)
temp_dir=/tmp/gdyshi
config_file_dir=$current_run_dir/conf
sh_file_dir=$current_run_dir/sh  
setup_file_dir=$current_run_dir/tar     

if [ ! -d "$temp_dir" ]; then 
    mkdir -p "$temp_dir" 
fi


# config oray
cd $temp_dir
tar zxf $setup_file_dir/phddns_raspberry.tgz
phddns=phddns2
cd $phddns
sudo ./oraynewph start
cd ..
rm $phddns -rf

# config apt sources
sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak
sudo cp $config_file_dir/sources.list /etc/apt/sources.list
sudo apt-get update

# config samba
sudo apt-get install samba samba-common-bin

# config external startup shell
