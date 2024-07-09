sudo apt upgrade -y
hostname -I > ipaddress
if [ ! -f "info" ]; then
whoami>info
date>>info
else
whoami>>info
date>>info
fi
echo $(cat info) | nc $(cat ipaddress) 4444
