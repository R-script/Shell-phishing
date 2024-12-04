#!/bin/bash
hostname -I > ipaddress
sudo touch userInfo.txt
sudo nc -lnv $(cat ipaddress) 4444 >> userInfo.txt
