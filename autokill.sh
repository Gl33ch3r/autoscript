#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- icanhazip.com);
echo "Checking VPS"
clear
echo -e ""
echo -e "======================================"
echo -e ""
echo -e "     Status Autokill $sts        "
echo -e ""
echo -e "     [1]  AutoKill After 5 Minutes"
echo -e "     [2]  AutoKill After 10 Minutes"
echo -e "     [3]  AutoKill After 15 Minutes"
echo -e "     [4]  Turn Off AutoKill/MultiLogin"
echo -e "     [x]  Exit"
echo -e "======================================"                                                                                                          
echo -e ""
read -p "     Select From Options [1-4 or x] :  " AutoKill
read -p "     Multilogin Maximum Number Of Allowed: " max
echo -e ""
case $AutoKill in
                1)
                echo -e ""
                sleep 1
                clear
                echo > /etc/cron.d/kickuser
                echo "# Autokill" >>/etc/cron.d/kickuser
                echo "*/5 * * * *  root /usr/bin/kickuser $max" >>/etc/cron.d/kickuser
                echo -e ""
                echo -e "======================================"
                echo -e ""
                echo -e "      Allowed MultiLogin : $max"
                echo -e "      AutoKill Every     : 5 Minutes"      
                echo -e ""
                echo -e "======================================"                                                                                                                                 
                exit                                                                  
                ;;
                2)
                echo -e ""
                sleep 1
                clear
                echo > /etc/cron.d/kickuser
                echo "# Autokill" >>/etc/cron.d/kickuser
                echo "*/10 * * * *  root /usr/bin/kickuser $max" >>/etc/cron.d/kickuser
                echo -e ""
                echo -e "======================================"
                echo -e ""
                echo -e "      Allowed MultiLogin : $max"
                echo -e "      AutoKill Every     : 10 Minutes"
                echo -e ""
                echo -e "======================================"
                exit
                ;;
                3)
                echo -e ""
                sleep 1
                clear
                echo > /etc/cron.d/kickuser
                echo "# Autokill" >>/etc/cron.d/kickuser
                echo "*/15 * * * *  root /usr/bin/kickuser $max" >>/etc/cron.d/kickuser
                echo -e ""
                echo -e "======================================"
                echo -e ""
                echo -e "      Allowed MultiLogin : $max"
                echo -e "      AutoKill Every     : 15 Minutes"
                echo -e ""
                echo -e "======================================"
                exit
                ;;
                4)
                clear
                echo > /etc/cron.d/kickuser
                echo -e ""
                echo -e "======================================"
                echo -e ""
                echo -e "      AutoKill MultiLogin Turned Off  "
                echo -e ""
                echo -e "======================================"
                exit
                ;;
                x)
                clear
                exit
                ;;
        esac