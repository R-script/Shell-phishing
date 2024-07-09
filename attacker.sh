hostname -I > ipaddress
sudo nc -lnv $(cat ipaddress) 4444

