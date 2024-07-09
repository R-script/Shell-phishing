sudo apt upgrade -y
if [! dpkg -s netcat]; then
sudo apt install netcat -y
fi
if [! dpkg -s banner]; then
sudo apt install banner -y
fi
hostname -I > ipaddress
if [ ! -f "info" ]; then
whoami>info
date>>info
else
whoami>>info
date>>info
fi
echo $(cat info) | nc $(cat ipaddress) 4444
