#!/bin/bash
sudo mkdir -p /share_n/upload; sudo chown -R nfsnobody:nfsnobody /share_n; sudo chmod -R 777 /share_n
echo -en "/share_n	192.168.1.3(ro)\n/share_n/upload	192.168.1.3(rw)\n" | sudo tee -a /etc/exports
sudo systemctl start nfs-server.service
sudo systemctl enable nfs-server.service
sudo systemctl start firewalld
sudo systemctl enable firewalld
sudo firewall-cmd --permanent --add-service=nfs
sudo firewall-cmd --permanent --add-service=nfs3
sudo firewall-cmd --permanent --add-service=rpc-bind
sudo firewall-cmd --permanent --add-service=mountd
sudo firewall-cmd --reload
