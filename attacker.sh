hostname -I > ipaddress
if [ ! -f "userInfo" ]; then
touch userInfo.txt
fi
sudo nc -lnv $(cat ipaddress) 4444 >> userInfo.txt

