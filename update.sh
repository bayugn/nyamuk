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
echo "Start Update"
#cd /usr/bin
rm /usr/bin/menu
wget -q https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/update/install.sh && chmod +x install.sh && sed -i -e 's/\r$//' install.sh && ./install.sh
rm install.sh
clear
echo " Update Successfull"
echo " Enjoyy"
