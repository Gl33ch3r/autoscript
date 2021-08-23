#!/bin/bash
if [ "${EUID}" -ne 0 ]; then
		echo "You need to run this script as root"
		exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
		echo "OpenVZ is not supported"
		exit 1
fi
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- icanhazip.com);
clear
if [ -f "/etc/v2ray/domain" ]; then
echo "Script Already Installed"
exit 0
fi
mkdir /var/lib/premium-script;
echo "IP=" >> /var/lib/premium-script/ipvps.conf

#text
apt install boxes
sudo apt-get install ruby -y
sudo gem install lolcat
# Running screenfetch
cd
rm -rf /root/.bashrc
wget -O /root/.bashrc https://raw.githubusercontent.com/Gl33ch3r/autoscript/main/.bashrc
#install cf
wget https://raw.githubusercontent.com/Gl33ch3r/autoscript/main/cloudflare.sh && chmod +x cloudflare.sh && ./cloudflare.sh
#install ssh ovpn
wget https://raw.githubusercontent.com/Gl33ch3r/autoscript/main/ssh-vpn.sh && chmod +x ssh-vpn.sh && ./ssh-vpn.sh
wget https://raw.githubusercontent.com/Gl33ch3r/autoscript/main/sstp.sh && chmod +x sstp.sh && ./sstp.sh
#install ssr
wget https://raw.githubusercontent.com/Gl33ch3r/autoscript/main/ssr.sh && chmod +x ssr.sh && ./ssr.sh
wget https://raw.githubusercontent.com/Gl33ch3r/autoscript/main/sodosok.sh && chmod +x sodosok.sh && ./sodosok.sh
#installwg
wget https://raw.githubusercontent.com/Gl33ch3r/autoscript/main/wireguard.sh && chmod +x wireguard.sh && ./wireguard.sh
#install v2ray
wget http://raw.githubusercontent.com/Gl33ch3r/autoscript/main/ins-vt.sh && chmod +x ins-vt.sh && ./ins-vt.sh
#install L2TP
wget https://raw.githubusercontent.com/Gl33ch3r/autoscript/main/ipsec.sh && chmod +x ipsec.sh && ./ipsec.sh
wget https://raw.githubusercontent.com/Gl33ch3r/autoscript/main/set-br.sh && chmod +x set-br.sh && ./set-br.sh
#install WebsocketSSH
wget https://raw.githubusercontent.com/Gl33ch3r/autoscript/main/inswssh.sh && chmod +x inswssh.sh && ./inswssh.sh
# set time GMT +8
ln -fs /usr/share/zoneinfo/Asia/Manila /etc/localtime
# install webserver
apt -y install nginx
cd
rm /etc/nginx/sites-enabled/default
rm /etc/nginx/sites-available/default
wget -O /etc/nginx/nginx.conf "https://raw.githubusercontent.com/Gl33ch3r/autoscript/main/nginx.conf"
mkdir -p /home/vps/public_html
wget -O /etc/nginx/conf.d/vps.conf "https://raw.githubusercontent.com/Gl33ch3r/autoscript/main/vps.conf"
/etc/init.d/nginx restart

echo "0 0 * * * root /sbin/reboot" > /etc/cron.d/reboot

#finish
rm -f /root/ssh-vpn.sh
rm -f /root/sstp.sh
rm -f /root/wireguard.sh
rm -f /root/sodosok.sh
rm -f /root/ssr.sh
rm -f /root/ins-vt.sh
rm -f /root/ipsec.sh
rm -f /root/set-br.sh
rm -f /root/inswssh.sh
cat <<EOF> /etc/systemd/system/autosett.service
[Unit]
Description=autosetting
Documentation=https://polarisvpn.tk

[Service]
Type=oneshot
ExecStart=/bin/bash /etc/set.sh
RemainAfterExit=yes

[Install]
WantedBy=multi-user.target
EOF
systemctl daemon-reload
systemctl enable autosett
wget -O /etc/set.sh "https://raw.githubusercontent.com/Gl33ch3r/autoscript/main/set.sh"
chmod +x /etc/set.sh
history -c
echo "1.2" > /home/ver
clear
echo " "
echo "Installation has been completed!!"
echo " "
echo "=================================-Autoscript Premium-===========================" | tee -a log-install.txt
echo "" | tee -a log-install.txt
echo "--------------------------------------------------------------------------------" | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   >>> Service & Port"  | tee -a log-install.txt
echo "   - OpenSSH                 : 22"  | tee -a log-install.txt
echo "   - Websocket OpenSSH       : 80"  | tee -a log-install.txt
echo "   - OpenVPN                 : TCP 1194, UDP 2200, SSL 442"  | tee -a log-install.txt
echo "   - Stunnel4                : 443, 777"  | tee -a log-install.txt
echo "   - Dropbear                : 109, 143"  | tee -a log-install.txt
echo "   - Squid Proxy             : 3128, 8080 (limit to IP Server)"  | tee -a log-install.txt
echo "   - Badvpn                  : 7100, 7200, 7300"  | tee -a log-install.txt
echo "   - Nginx                   : 81"  | tee -a log-install.txt
echo "   - Wireguard               : 7070"  | tee -a log-install.txt
echo "   - L2TP/IPSEC VPN          : 1701"  | tee -a log-install.txt
echo "   - PPTP VPN                : 1732"  | tee -a log-install.txt
echo "   - SSTP VPN                : 444"  | tee -a log-install.txt
echo "   - Shadowsocks-R           : 1443-1543"  | tee -a log-install.txt
echo "   - SS-OBFS TLS             : 2443-2543"  | tee -a log-install.txt
echo "   - SS-OBFS HTTP            : 3443-3543"  | tee -a log-install.txt
echo "   - V2RAY Vmess TLS         : 8443"  | tee -a log-install.txt
echo "   - V2RAY Vmess None TLS    : 88"  | tee -a log-install.txt
echo "   - V2RAY Vless TLS         : 2083"  | tee -a log-install.txt
echo "   - V2RAY Vless None TLS    : 8880"  | tee -a log-install.txt
echo "   - Trojan                  : 2087"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   >>> Server Information & Other Features"  | tee -a log-install.txt
echo "   - Timezone                : Asia/Jakarta (GMT +7)"  | tee -a log-install.txt
echo "   - Fail2Ban                : [ON]"  | tee -a log-install.txt
echo "   - Dflate                  : [ON]"  | tee -a log-install.txt
echo "   - IPtables                : [ON]"  | tee -a log-install.txt
echo "   - Auto-Reboot             : [ON]"  | tee -a log-install.txt
echo "   - IPv6                    : [OFF]"  | tee -a log-install.txt
echo "   - Autoreboot On 05.00 GMT +7" | tee -a log-install.txt
echo "   - Auto Delete Expired Account" | tee -a log-install.txt
echo "   - Full Orders For Various Services" | tee -a log-install.txt
echo "   - White Label" | tee -a log-install.txt
echo "   - Installation Log --> /root/log-install.txt"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   - Dev/Main                : Gon Freecs"  | tee -a log-install.txt
echo "   - Telegram                : T.me/gonfreecs600"  | tee -a log-install.txt
echo "   - Whatsapp                : 09980804178"  | tee -a log-install.txt
echo "------------------Script Created By Gl33ch3r-----------------" | tee -a log-install.txt
echo ""
rm -f setup.sh