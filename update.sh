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
MYIP=$(wget -qO- ifconfig.me/ip);
IZIN=$( curl https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/siap/beta/ipvps | grep $MYIP )
if [ $MYIP = $IZIN ]; then
echo -e "${green}Permission Accepted...${NC}"
else
echo -e "${red}Permission Denied!${NC}";
rm -f setup.sh
exit 0
fi
echo "Start Update"
# update
cd /usr/bin

wget -O add-host "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/add-host.sh"
wget -O about "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/about.sh"
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
wget -O strt "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/strt.sh"
wget -O swap "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/swapkvm.sh"
chmod +x add-host
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
chmod +x strt
chmod +x swap
wget -O /usr/bin/ssr https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/ssrmu.sh && chmod +x /usr/bin/ssr
wget -O /usr/bin/add-ssr https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/add-ssr.sh && chmod +x /usr/bin/add-ssr
wget -O /usr/bin/del-ssr https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/del-ssr.sh && chmod +x /usr/bin/del-ssr
wget -O /usr/bin/renew-ssr https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/renew-ssr.sh && chmod +x /usr/bin/renew-ssr
wget -O add-wg "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/add-wg.sh"
wget -O del-wg "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/del-wg.sh"
wget -O cek-wg "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/cek-wg.sh"
wget -O renew-wg "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/renew-wg.sh"
chmod +x add-wg
chmod +x del-wg
chmod +x cek-wg
chmod +x renew-wg
wget -O add-ss "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/add-ss.sh"
wget -O del-ss "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/del-ss.sh"
wget -O cek-ss "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/cek-ss.sh"
wget -O renew-ss "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/renew-ss.sh"
chmod +x add-ss
chmod +x del-ss
chmod +x cek-ss
chmod +x renew-ss
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
echo "done"
