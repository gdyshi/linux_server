#!/bin/sh
echo $config_file_dir
sudo crontab $config_file_dir/cron.conf
