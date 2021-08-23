##upgrade
clear
echo Installing Websocket-SSH Python
sleep 1
echo Check Access Rights...
sleep 0.5
apt-get update
apt-get upgrade -y
cd
cd /etc/systemd/system/
wget -O /etc/systemd/system/ws-openssh.service https://raw.githubusercontent.com/Gl33ch3r/autoscript/main/ws-openssh.service
cd
cd /usr/local/bin/
#Install Script Websocket-SSH Python
wget -O /usr/local/bin/ws-openssh https://raw.githubusercontent.com/Gl33ch3r/autoscript/main/ws-openssh.py
chmod +x /usr/local/bin/ws-openssh
##Screen
apt-get install screen -y
##python install
apt-get install python -y

cd
systemctl daemon-reload
#Enable & Start & Restart ws-openssh service
systemctl enable ws-openssh.service
systemctl start ws-openssh.service
systemctl restart ws-openssh.service