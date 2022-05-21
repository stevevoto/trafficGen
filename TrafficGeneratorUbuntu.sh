#!/bin/sh

#--------------Web Traffic Generator Ubuntu V.2 -------#

apt-get -y install wget net-tools lshw ntp tcpdump iperf iperf3 git tcpdump htop curl
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt-get -f install
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt-get install git
sudo apt-get install nodejs
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
git clone https://github.com/stevevoto/trafficGen/.git
cd web-traffic-generator/
sudo ./install.sh
git pull
sudo reboot now
wget www.office.com
wget www.microsoft.com/en-us/microsoft-teams/log-in
wget dialin.teams.microsoft.com
node traffgen.js
sudo systemctl start web-traffic-gen.service
sudo systemctl status web-traffic-gen.service
sudo systemctl enable web-traffic-gen.service
