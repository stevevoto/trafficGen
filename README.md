# trafficGen
1. Download and install the Ubuntu 18.0.4 located here https://releases.ubuntu.com/18.04/ubuntu-18.04.6-desktop-amd64.iso.  
2. ssh to your device with your username/passwd and sudu su to root
3. Connect your Desktop to the internet and make sure DNS is configured properly
4. sudo apt-get install openssh-server
5. sudo apt-get update
6. sudo apt-get install -y git curl
7. sudo git clone https://github.com/stevevoto/trafficGen
8. chmod +x TrafficGeneratorUbuntu.sh 
9. Run ./TrafficGeneratorUbuntu.sh
10. When Complete check service is runnning "sudo systemctl status web-traffic-gen.service"
11. If services is not running run the following command: sudo systemctl start web-traffic-gen.service
