#!/bin/sh
sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak
sudo cp $config_file_dir/sources.list /etc/apt/sources.list
sudo apt-get update
