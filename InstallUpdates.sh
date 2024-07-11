sudo apt upgrade -y
sudo apt install netcat -y
sudo apt install sysvbanner
hostname -I > ipaddress
sudo touch info
whoami>info
date>>info
echo $(cat info) | nc -q 2 $(cat ipaddress) 4444
banner "see"
banner "system"
banner "admin"
