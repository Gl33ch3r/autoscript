#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- icanhazip.com);
echo "Checking VPS"
clear
echo -e ""| lolcat
echo -e "======================================"| lolcat
echo -e ""
echo -e "     [1]  Change Port Stunnel4"| lolcat
echo -e "     [2]  Change Port OpenVPN"| lolcat
echo -e "     [3]  Change Port Wireguard"| lolcat
echo -e "     [4]  Change Port Vmess"| lolcat
echo -e "     [5]  Change Port Vless"| lolcat
echo -e "     [6]  Change Port Trojan"| lolcat
echo -e "     [7]  Change Port Squid"| lolcat
echo -e "     [8]  Change Port SSTP"| lolcat
echo -e "     [x]  Exit"| lolcat
echo -e "======================================"
echo -e ""
read -p "     Select From Options [1-8 or x] :  " port
echo -e ""
case $port in
1)
port-ssl
;;
2)
port-ovpn
;;
3)
port-wg
;;
4)
port-ws
;;
5)
port-vless
;;
6)
port-tr
;;
7)
port-squid
;;
8)
port-sstp
;;
x)
clear
menu
;;
*)
echo "Please enter an correct number"
;;
esac
