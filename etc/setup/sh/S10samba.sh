#!/bin/sh
sudo apt-get install samba samba-common-bin
sudo apt-get install netatalk
sudo apt-get install avahi-daemon

sudo nano /etc/samba/smb.conf
sudo smbpasswd -a $USER
sudo service smbd restart
