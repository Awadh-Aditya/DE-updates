#!/bin/sh

systemctl stop rana
systemctl stop devicemgr

rm /usr/sbin/device-manager/DeviceManager/app.py
wget https://raw.githubusercontent.com/milanpreetkaur502/DE-updates/main/DeviceManager/app.py -O /usr/sbin/device-manager/DeviceManager/app.py
chmod 755 /usr/sbin/device-manager/DeviceManager/app.py

rm /usr/sbin/device-manager/DeviceManager/templates/Dashboard.html
wget https://raw.githubusercontent.com/milanpreetkaur502/DE-updates/main/DeviceManager/templates/Dashboard.html -O /usr/sbin/device-manager/DeviceManager/templates/Dashboard.html
chmod 755 /usr/sbin/device-manager/DeviceManager/templates/Dashboard.html


rm /usr/sbin/device-manager/DeviceManager/templates/files.html
wget https://raw.githubusercontent.com/milanpreetkaur502/DE-updates/main/DeviceManager/templates/files.html  -O /usr/sbin/device-manager/DeviceManager/templates/files.html
chmod 755 /usr/sbin/device-manager/DeviceManager/templates/files.html


rm /usr/sbin/device-manager/DeviceManager/templates/videofeed.html
wget https://raw.githubusercontent.com/milanpreetkaur502/DE-updates/main/DeviceManager/templates/videofeed.html -O /usr/sbin/device-manager/DeviceManager/templates/videofeed.html
chmod 755 /usr/sbin/device-manager/DeviceManager/templates/videofeed.html


rm /usr/sbin/device-manager/DeviceManager/templates/configurations.html
wget https://raw.githubusercontent.com/milanpreetkaur502/DE-updates/main/DeviceManager/templates/configurations.html -O /usr/sbin/device-manager/DeviceManager/templates/configurations.html
chmod 755 /usr/sbin/device-manager/DeviceManager/templates/configurations.html

rm /usr/sbin/rana/rana.sh
wget https://raw.githubusercontent.com/milanpreetkaur502/DE-updates/main/rana/rana.sh  -O /usr/sbin/rana/rana.sh
chmod 755 /usr/sbin/camera/rana.sh

wget https://raw.githubusercontent.com/milanpreetkaur502/DE-updates/main/rana/remove.sh  -O /usr/sbin/rana/remove.sh
chmod 755 /usr/sbin/camera/remove.sh

rm /lib/systemd/system/rana.service
wget https://raw.githubusercontent.com/milanpreetkaur502/DE-updates/main/rana/rana.service -O /lib/systemd/system/rana.service
chmod 644 /lib/systemd/system/rana.service

rm /etc/entomologist/ento.conf
wget https://raw.githubusercontent.com/milanpreetkaur502/DE-updates/main/ento.conf -O /etc/entomologitst/ento.conf
chmod 755 /etc/entomologitst/ento.conf

rm /etc/entomologist/camera_control.conf
wget https://raw.githubusercontent.com/milanpreetkaur502/DE-updates/main/camera_control.conf -O /etc/entomologitst/camera_control.conf
chmod 755 /etc/entomologitst/camera_control.conf


mkdir /usr/sbin/camera
wget https://raw.githubusercontent.com/milanpreetkaur502/DE-updates/main/camera/cam_set.py -O /usr/sbin/camera/cam_set.py
chmod 755 /usr/sbin/camera/cam_set.py


wget https://raw.githubusercontent.com/milanpreetkaur502/DE-updates/main/cam_set.service -O /lib/systemd/system/cam_set.service
chmod 644 /lib/systemd/system/cam_set.service


systemctl start devicemgr
