#!/bin/bash

echo -e "                                                  "| lolcat
echo -e "[*][*][*]======================================[*][*][*]"| lolcat
echo -e "                                                   "| lolcat
echo -e "            AutoScript By VPNinjector.com"| lolcat
echo -e "                                                  "| lolcat
echo -e "            [1] Renew Account Vmess"| lolcat
echo -e "            [2] Renew Account Vless"| lolcat
echo -e "            [3] Renew Account Trojan"| lolcat
echo -e "            [4] Delete Account Vmess"| lolcat
echo -e "            [5] Delete Account Vless"| lolcat
echo -e "            [6] Delete Account Trojan"| lolcat
echo -e "            [7] Change Port"| lolcat
echo -e "            [8] Check Account Vmess Login"| lolcat
echo -e "            [9] Check Account Vless Login"| lolcat
echo -e "            [10] Check Account Trojan Login"| lolcat
echo -e "            [x] menu"| lolcat
echo -e "                                                   "| lolcat
read -p "      Select From Options [1-10 or x] :  " options
echo -e "                                                   "
echo -e "[*][*][*]======================================[*][*][*]"| lolcat
clear
case $options in
1)
renew-ws
;;
2)
renew-vless
;;
3)
renew-tr
;;
4)
del-ws
;;
5)
del-vless
;;
6)
del-tr
;;
7)
change-port
;;
8)
cek-ws
;;
9)
cek-vless
;;
10)
cek-tr
;;
x)
menu
;;
*)
echo "Please enter an correct number"
;;
esac