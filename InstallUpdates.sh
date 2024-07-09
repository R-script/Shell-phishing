sudo apt upgrade -y
sudo apt install netcat -y
sudo apt install sysvbanner
hostname -I > ipaddress
whoami>info
date>>info
echo $(cat info) | nc -q 2 $(cat ipaddress) 4444
banner "you've"
banner "clicked"
banner "a"
banner "phishing"
banner "link"
