# trafficGen
1. Download and install the Ubuntu 18.0.4 located here https://releases.ubuntu.com/18.04/ubuntu-18.04.6-desktop-amd64.iso.  
2. sudo apt-get install openssh-server
3. sudo apt-get update
4. ssh to your device with your username/passwd and sudu su to root
5. Connect your Desktop to the internet and make sure DNS is configured properly
6. Then get https://github.com/stevevoto/trafficGen/TrafficGeneratorUbuntu.sh
7. Run chmod +x TrafficGeneratorUbuntu.sh
8. Run ./TrafficGeneratorUbuntu.sh
9. When Complete check service is runnning "sudo systemctl status web-traffic-gen.service"
10. If services is not running run the following command: sudo systemctl start web-traffic-gen.service
