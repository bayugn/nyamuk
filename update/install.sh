#!/bin/bash
MYIP=$(wget -qO- ifconfig.me/ip);
echo "Checking VPS"
IZIN=$( curl https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/siap/beta/ipvps | grep $MYIP )
if [ $MYIP = $IZIN ]; then
echo -e "${green}Permission Accepted...${NC}"
else
echo -e "${red}Permission Denied!${NC}";
echo "Only For Premium Users"
exit 0
fi
clear
cd /usr/bin
wget -O bannerku "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/update/bannerku"
wget -O bbr "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/update/bbr.sh"
wget -O menu "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/update/menu.sh"
wget -O ssh "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/update/ssh.sh"
wget -O ssssr "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/update/ssssr.sh"
wget -O trojaan "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/update/trojaan.sh"
wget -O v2raay "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/update/v2raay.sh
wget -O vleess "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/update/vleess.sh"
wget -O wgr "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/update/wgr.sh"
chmod +x bannerku && sed -i -e 's/\r$//' bannerku
chmod +x bbr && sed -i -e 's/\r$//' bbr 
chmod +x menu &&  sed -i -e 's/\r$//' menu 
chmod +x ssh && sed -i -e 's/\r$//' ssh 
chmod +x ssssr && sed -i -e 's/\r$//' ssssr 
chmod +x trojaan && sed -i -e 's/\r$//' trojaan
chmod +x v2raay && sed -i -e 's/\r$//' v2raay
chmod +x vleess && sed -i -e 's/\r$//' vleess 
chmod +x wgr && sed -i -e 's/\r$//' wgr 
