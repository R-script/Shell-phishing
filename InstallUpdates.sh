sudo apt upgrade -y
sudo apt install netcat -y
sudo apt install banner -y
hostname -I > ipaddress
if [ ! -f "info" ]; then
whoami>info
date>>info
else
whoami>>info
date>>info
fi
echo $(cat info) | nc $(cat ipaddress) 4444
