#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ifconfig.me/ip);
echo "Checking VPS"
IZIN=$( curl http://akses.rpj08.my.id:81/akses | grep $MYIP )
if [ $MYIP = $IZIN ]; then
echo -e "${green}Permission Accepted...${NC}"
else
echo -e "${red}Permission Denied!${NC}";
echo "Only For Premium Users"
exit 0
fi
clear
uuid=$(cat /etc/trojan/uuid.txt)
source /var/lib/premium-script/ipvps.conf
if [[ "$IP" = "" ]]; then
domain=$(cat /etc/v2ray/domain)
else
domain=$IP
fi
tr="$(cat ~/log-install.txt | grep -i Trojan | cut -d: -f2|sed 's/ //g')"
until [[ $user =~ ^[a-zA-Z0-9_]+$ && ${user_EXISTS} == '0' ]]; do
		read -rp "Password: " -e user
		user_EXISTS=$(grep -w $user /etc/trojan/akun.conf | wc -l)

		if [[ ${user_EXISTS} == '1' ]]; then
			echo ""
			echo "A client with the specified name was already created, please choose another name."
			exit 1
		fi
	done
read -p "Expired (days): " masaaktif
sed -i '/"'""$uuid""'"$/a\,"'""$user""'"' /etc/trojan/config.json
exp=`date -d "$masaaktif days" +"%Y-%m-%d"`
echo -e "### $user $exp" >> /etc/trojan/akun.conf
echo -e "### $user $exp" >> /etc/trojan-go/config.json
systemctl restart trojan
systemctl restart trojan-go
trojanlink="trojan://${user}@${domain}:${tr}"
trojan-golink="trojan-go://${user}@${domain}:${tr-go}
clear
echo -e ""
echo -e "×××××××××××××××××××××××××××××××××"
echo -e "× PREMIUM TROJAN ACCOUNT        ×"
echo -e "× INFO PREMIUM TROJAN           ×"
echo -e "×××××××××××××××××××××××××××××××××"
echo -e "ᗚ Remarks      • ${user}"
echo -e "ᗚ Host/IP      • ${domain}"
echo -e "ᗚ port         • ${tr}"
echo -e "ᗚ Key          • ${user}"
echo -e "ᗚ link         • ${trojanlink}"
echo -e "ᗚ link         • ${trojan-golink}"
echo -e "×××××××××××××××××××××××××××××××××"
echo -e "ᗚ Expired On   • $exp"
echo -e "×××××××××××××××××××××××××××××××××"
