#!/bin/bash
sudo mkdir /mnt/share_n /mnt/upload; sudo chown -R vagrant:vagrant /mnt/share_n /mnt/upload; sudo chmod -R 777 /mnt/share_n /mnt/upload
echo -en "192.168.1.2:/share_n	/mnt/share_n	nfs	_netdev,ro,noatime,noauto,x-systemd.automount,nosuid,noexec,proto=udp,vers=3	0 0\n192.168.1.2:/share_n/upload	/mnt/upload	nfs	_netdev,rw,noatime,noauto,x-systemd.automount,nosuid,noexec,proto=udp,vers=3	0 0\n" | sudo tee -a /etc/fstab
sudo mount /mnt/share_n; sudo mount /mnt/upload
