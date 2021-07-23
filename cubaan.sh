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
IZIN=$( curl https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/siap/beta/ipvps | grep $MYIP )
if [ $MYIP = $IZIN ]; then
echo -e "${green}Permission Accepted...${NC}"
else
echo -e "${red}Permission Denied!${NC}";
echo "Please Contact Admin"
echo "Telegram t.me/cyberbossz"
rm -f cubaan.sh
exit 0
fi
mkdir /var/lib/premium-script;
echo "IP=" >> /var/lib/premium-script/ipvps.conf
wget -q https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/cf.sh && chmod +x cf.sh && ./cf.sh
# Install Essential Packages
apt-get -y install nano iptables dnsutils openvpn screen whois ngrep unzip unrar
#install ssh ovpn
wget -q https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/ssh-vpn.sh && chmod +x ssh-vpn.sh && screen -S ssh-vpn ./ssh-vpn.sh
#install ssr
wget -q https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/ssr.sh && chmod +x ssr.sh && screen -S ssr ./ssr.sh
wget -q https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/sodosok.sh && chmod +x sodosok.sh && screen -S sodosok ./sodosok.sh
#installwg
wget -q https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/wg.sh && chmod +x wg.sh && screen -S wg ./wg.sh
#install v2ray
wget -q https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/ins-vt.sh && chmod +x ins-vt.sh && screen -S v2ray ./ins-vt.sh
#install ssh-ws
wget https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/websocket.sh && chmod +x websocket.sh && ./websocket.sh 
#install Br-SH
wget -q https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/set-br.sh && chmod +x set-br.sh && ./set-br.sh

rm -f /root/ssh-vpn.sh
rm -f /root/wg.sh
rm -f /root/ss.sh
rm -f /root/ssr.sh
rm -f /root/ins-vt.sh
rm -f /root/websocket.sh
rm -f /root/set-br.sh
rm -f /usr/bin/menu
rm -f /usr/bin/usernew
rm -f /usr/bin/add-ws
rm -f /usr/bin/add-tr
rm -f /usr/bin/hapus

cd /usr/bin
wget -O add-host "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/add-host.sh"
wget -O about "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/about.sh"
wget -O menu "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/menu.sh"
wget -O usernew "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/usernew.sh"
wget -O trial "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/trial.sh"
wget -O hapus "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/hapus.sh"
wget -O member "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/member.sh"
wget -O delete "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/delete.sh"
wget -O cek "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/cek.sh"
wget -O restart "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/restart.sh"
wget -O speedtest "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/speedtest_cli.py"
wget -O info "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/info.sh"
wget -O ram "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/ram.sh"
wget -O renew "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/renew.sh"
wget -O autokill "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/autokill.sh"
wget -O ceklim "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/ceklim.sh"
wget -O tendang "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/tendang.sh"
wget -O clear-log "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/clear-log.sh"
wget -O change-port "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/change.sh"
wget -O port-ovpn "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/port-ovpn.sh"
wget -O port-ssl "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/port-ssl.sh"
wget -O port-wg "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/port-wg.sh"
wget -O port-tr "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/port-tr.sh"
wget -O port-squid "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/port-squid.sh"
wget -O port-ws "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/port-ws.sh"
wget -O port-vless "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/port-vless.sh"
wget -O wbmn "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/webmin.sh"
wget -O xp "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/xp.sh"
wget -O update "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/update.sh"
wget -O add-ws "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/add-ws.sh"
wget -O add-vless "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/add-vless.sh"
wget -O add-tr "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/add-tr.sh"
wget -O del-ws "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/del-ws.sh"
wget -O del-vless "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/del-vless.sh"
wget -O del-tr "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/del-tr.sh"
wget -O cek-ws "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/cek-ws.sh"
wget -O cek-vless "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/cek-vless.sh"
wget -O cek-tr "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/cek-tr.sh"
wget -O renew-ws "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/renew-ws.sh"
wget -O renew-vless "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/renew-vless.sh"
wget -O renew-tr "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/renew-tr.sh"
wget -O certv2ray "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/cert.sh"
chmod +x add-ws
chmod +x add-vless
chmod +x add-tr
chmod +x del-ws
chmod +x del-vless
chmod +x del-tr
chmod +x cek-ws
chmod +x cek-vless
chmod +x cek-tr
chmod +x renew-ws
chmod +x renew-vless
chmod +x renew-tr
chmod +x certv2ray
chmod +x add-host
chmod +x menu
chmod +x usernew
chmod +x trial
chmod +x hapus
chmod +x member
chmod +x delete
chmod +x cek
chmod +x restart
chmod +x speedtest
chmod +x info
chmod +x about
chmod +x autokill
chmod +x tendang
chmod +x ceklim
chmod +x ram
chmod +x renew
chmod +x clear-log
chmod +x change-port
chmod +x port-ovpn
chmod +x port-ssl
chmod +x port-wg
chmod +x port-tr
chmod +x port-squid
chmod +x port-ws
chmod +x port-vless
chmod +x wbmn
chmod +x xp
chmod +x update
clear
echo ""
echo "Installation has been completed!!"
echo " "
echo "=================================-Autoscript Premium-===========================" | tee -a log-install.txt
echo "" | tee -a log-install.txt
echo "--------------------------------------------------------------------------------" | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   >>> Service & Port"  | tee -a log-install.txt
echo "   - OpenSSH                 : 22"  | tee -a log-install.txt
echo "   - OpenVPN                 : TCP 1194, UDP 2200, SSL 442"  | tee -a log-install.txt
echo "   - Stunnel4                : 444, 777"  | tee -a log-install.txt
echo "   - Dropbear                : 109, 143"  | tee -a log-install.txt
echo "   - Squid Proxy             : 8181, 8080 (Proxy Sotong)"  | tee -a log-install.txt
echo "   - Magic Proxy SSH         : 8180 (Proxy Tisu Magic)"  | tee -a log-install.txt
echo "   - Magic Proxy OVPN        : 8000 (Proxy Tisu Magic)"  | tee -a log-install.txt
echo "   - Badvpn                  : 7100, 7200, 7300"  | tee -a log-install.txt
echo "   - Nginx                   : 81"  | tee -a log-install.txt
echo "   - Wireguard               : 7070"  | tee -a log-install.txt
echo "   - Shadowsocks-R           : 1443-1543"  | tee -a log-install.txt
echo "   - SS-OBFS TLS             : 2443-2543"  | tee -a log-install.txt
echo "   - SS-OBFS HTTP            : 3443-3543"  | tee -a log-install.txt
echo "   - V2RAY Vmess TLS         : 443"  | tee -a log-install.txt
echo "   - V2RAY Vmess None TLS    : 550"  | tee -a log-install.txt
echo "   - V2RAY Vless TLS         : 888"  | tee -a log-install.txt
echo "   - V2RAY Vless None TLS    : 880"  | tee -a log-install.txt
echo "   - Trojan                  : 555"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   >>> Server Information & Other Features"  | tee -a log-install.txt
echo "   - Timezone                : Asia/Kuala_Lumpur (UMT +8)"  | tee -a log-install.txt
echo "   - Fail2Ban                : [ON]"  | tee -a log-install.txt
echo "   - Dflate                  : [ON]"  | tee -a log-install.txt
echo "   - IPtables                : [ON]"  | tee -a log-install.txt
echo "   - Auto-Reboot             : [ON]"  | tee -a log-install.txt
echo "   - IPv6                    : [OFF]"  | tee -a log-install.txt
echo "   - Autoreboot On 05.00 GMT +7" | tee -a log-install.txt
echo "   - Autobackup Data" | tee -a log-install.txt
echo "   - Restore Data" | tee -a log-install.txt
echo "   - Auto Delete Expired Account" | tee -a log-install.txt
echo "   - Full Orders For Various Services" | tee -a log-install.txt
echo "   - White Label" | tee -a log-install.txt
echo "   - Installation Log --> /root/log-install.txt"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "-----------------------------------------------------------------------------------------------------------------------------" | tee -a log-install.txt
echo ""
echo " Reboot 15 Sec"
history -c
sleep 15
rm -f cubaan.sh
reboot
