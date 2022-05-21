#!/bin/sh

--------------Web Traffic Generator Ubuntu -------

apt-get -y install wget net-tools lshw ntp tcpdump iperf iperf3 git tcpdump htop curl
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt-get -f install
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt-get -y install git
sudo apt-get -y install nodejs
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
git clone https://github.com/stevevoto/trafficGen.git

cd trafficGen/
chmod +x install.sh 
sudo ./install.sh
sudo chmod 755 usr/bin/traffgen 
wget www.office.com
wget www.microsoft.com/en-us/microsoft-teams/log-in
wget dialin.teams.microsoft.com
node traffgen.js
sudo systemctl start web-traffic-gen.service
sudo systemctl status web-traffic-gen.service
sudo systemctl enable web-traffic-gen.service

sudo reboot now
