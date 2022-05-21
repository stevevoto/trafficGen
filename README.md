# trafficGen
1. Download and install the Ubuntu 18.0.4 located here https://releases.ubuntu.com/18.04/ubuntu-18.04.6-desktop-amd64.iso.  
2. **Do not upgrade or update the OS **
3. Connect your Desktop to the internet and make sure DNS is configured properly
4. Then get https://github.com/stevevoto/trafficGen/TrafficGeneratorUbuntu.sh
5. Run chmod +x TrafficGeneratorUbuntu.sh
6. Run ./TrafficGeneratorUbuntu.sh
7. When Complete check service is runnning "sudo systemctl status web-traffic-gen.service"
8. If not run sudo systemctl start web-traffic-gen.service
