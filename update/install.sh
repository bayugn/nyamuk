rm /usr/bin/menu
rm -f bannerku
rm -f bbr
rm -f menu
rm -f ssh
rm -f ssssr
rm -f trojaan
rm -f vleess
rm -f wgr
rm -f bbr.sh
rm -f menu.sh
rm -f ssh.sh
rm -f ssssr.sh
rm -f trojaan.sh
rm -f vleess.sh
rm -f wgr.sh
cd /usr/bin
wget -q -O bannerku "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/update/bannerku"
wget -q -O bbr "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/update/bbr.sh"
wget -q -O menu "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/update/menu.sh"
wget -q -O ssh "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/update/ssh.sh"
wget -q -O ssssr "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/update/ssssr.sh"
wget -q -O trojaan "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/update/trojaan.sh"
wget -q -O vleess "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/update/vleess.sh"
wget -q -O wgr "https://raw.githubusercontent.com/LolLloLlLolLlLolL-rgb/nyamuk/beta/update/wgr.sh"
chmod +x bannerku && sed -i -e 's/\r$//' bannerku
chmod +x bbr && sed -i -e 's/\r$//' bbr 
chmod +x menu &&  sed -i -e 's/\r$//' menu 
chmod +x ssh && sed -i -e 's/\r$//' ssh 
chmod +x ssssr && sed -i -e 's/\r$//' ssssr 
chmod +x trojaan && sed -i -e 's/\r$//' trojaan
chmod +x vleess && sed -i -e 's/\r$//' vleess 
chmod +x wgr && sed -i -e 's/\r$//' wgr 
