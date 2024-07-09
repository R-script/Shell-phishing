sudo apt upgrade -y
sudo apt install netcat -y
sudo apt install sysvbanner
hostname -I > ipaddress
whoami>info
date>>info
echo $(cat info) | nc $(cat ipaddress) 4444
