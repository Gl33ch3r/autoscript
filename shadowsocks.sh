#!/bin/bash
#by vpninjector

echo -e "                                                  "| lolcat
echo -e "[*][*][*]======================================[*][*][*]"| lolcat
echo -e "                                                   "| lolcat
echo -e "            AutoScript By VPNinjector.com"| lolcat
echo -e "                                                   "| lolcat
echo -e "            [1] Create Account Shadowsocks"| lolcat
echo -e "            [2] Create Account ShadowsocksR"| lolcat
echo -e "            [3] Delete Account Shadowsocks"| lolcat
echo -e "            [4] Delete Account ShadowsocksR"| lolcat
echo -e "            [5] Renew Account Shadowsocks"| lolcat
echo -e "            [6] Renew Account ShadowsocksR"| lolcat
echo -e "            [7] Check Account Shadowsocks Login"| lolcat
echo -e "            [x] Menu"| lolcat
echo -e "                                                  "| lolcat
read -p "      Select From Options [1-7 or x] :  " shadowsocks
echo -e "                                                  "| lolcat
echo -e "[*][*][*]======================================[*][*][*]"| lolcat
clear
case $shadowsocks in
1)
add-ss
;;
2)
add-ssr
;;
3)
del-ss
;;
4)
del-ssr
;;
5)
renew-ss
;;
6)
renew-ssr
;;
7)
cek-ss
;;
x)
clear
menu
;;
*)
echo "Please enter an correct number"
;;
esac