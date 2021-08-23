#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- icanhazip.com);
echo "Checking VPS"
clear
read -p "Username SSH to Delete : " User

if getent passwd $User > /dev/null 2>&1; then
        userdel $User
        echo -e "User $User was removed."
else
        echo -e "Failure: User $User Not Exist."
fi