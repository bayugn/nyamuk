#!/bin/bash
#Menu
red="\e[1;31m"
gren="\e[1;32m"
blue="\e[1;34m"
yelow="\e[1;33m"
cyan="\e[1;36m"
white="\e[1;37m"
clear
echo -e ""
echo -e "$red════════════════════════════════════════════════════"
echo -e "$yelow════════$white[Script Premium by Sexy Janda Padu]$yelow════════"
echo -e "$gren════════════$white[  https://t.me/cyberbossz  ]$gren═══════════"
echo -e "$blue════════════════════════════════════════════════════"
echo -e ""
echo -e "$red═══════════════════════════════════════════════"
echo -e "$yelow══════════════$white[SSH OpenVPN Menu]$yelow═══════════════"
echo -e "$gren═══════════════════════════════════════════════"
echo -e "$red 1.  $white Create SSH OpenVPN Account"
echo -e "$red 2.  $white Generate Trial Account SSH OpenVPN"
echo -e "$red 3.  $white Renew SSH OpenVPN Account"
echo -e "$red 4.  $white Delete SSH OpenVPN Account"
echo -e "$red 5.  $white Check User Login SSH OpenVPN"
echo -e "$red 6.  $white Daftar Member SSH OpenVPN"
echo -e "$red 7.  $white Delete User Expired SSH OpenVPN"
echo -e "$red 8.  $white Set up Autokill SSH"
echo -e "$red 9.  $white Displays Users Who Do Multi Login SSH"
echo -e "$red 10.  $white Restart Service Dropbear, Squid3, OpenVPN dan SSH"
echo -e "$red═══════════════════════════════════════════════"
echo -e "$yelow══════════════$white[Wireguard Account]$yelow══════════════"
echo -e "$gren═══════════════════════════════════════════════"
echo -e "$red  11.  $white Create Wireguard Account"
echo -e "$red  12.  $white Delete Wireguard Account"
echo -e "$red  13.  $white Check User Login Wireguard"
echo -e "$red  14.  $white Renew Wireguard Account Active Life"
echo -e "$red═══════════════════════════════════════════════"
echo -e "$yelow═══════════════$white[SSR SS Account]$yelow════════════════"
echo -e "$gren═══════════════════════════════════════════════"
echo -e "$red  15.  $white Create SSR Account"
echo -e "$red  16.  $white Create Shadowsocks Account"
echo -e "$red  17.  $white Deleting SSR Account"
echo -e "$red  18.  $white Delete Shadowsocks Account"
echo -e "$red  19.  $white Renew SSR Account Active Life"
echo -e "$red  20.  $white Renew Shadowsocks Account Active Life"
echo -e "$red  21.  $white Check User Login Shadowsocks"
echo -e "$red  22.   $white Show Other SSR Menu"
echo -e "$red═══════════════════════════════════════════════"
echo -e "$yelow══════════════$white[All Account V2Ray]$yelow══════════════"
echo -e "$gren═══════════════════════════════════════════════"
echo -e "$cyan══════════$white[V2Ray Vmess]$cyan═════════"
echo -e "$red  23.  $white Create Vmess Websocket Account"
echo -e "$red  24.  $white Delete Vmess Websocket Account"
echo -e "$red  25.  $white Renew Vmess Account Active Life"
echo -e "$red  26.  $white Check User Login Vmess"
echo -e "$cyan══════════$white[V2Ray Vless]$cyan═════════"
echo -e "$red  27.  $white Create Vless Websocket Account"
echo -e "$red  28.  $white Deleting Vless Websocket Account"
echo -e "$red  29.  $white Renew Vless Account Active Life "
echo -e "$red  30.  $white Check User Login Vless"
echo -e "$cyan════════════$white[Trojan]$cyan════════════"
echo -e "$red  31.  $white Create Trojan Account"
echo -e "$red  32.  $white Deleting Trojan Account"
echo -e "$red  33.  $white Renew Trojan Account Active Life"
echo -e "$red  34.  $white Check User Login Trojan"
echo -e "$red═══════════════════════════════════════════════"
echo -e "$yelow════════════$white[All System Untils Menu]$yelow═══════════"
echo -e "$gren═══════════════════════════════════════════════"
echo -e "$red  35.  $white Add Subdomain Host For VPS"
echo -e "$red  36.  $white Renew Certificate V2RAY"
echo -e "$red  37.  $white Change Port All Account"
echo -e "$red  38.  $white Autobackup Data VPS"
echo -e "$red  39.  $white Backup Data VPS"
echo -e "$red  40.  $white Restore Data VPS"
echo -e "$red  41.  $white Webmin Menu"
echo -e "$red  42.  $white Limit Bandwith Speed Server"
echo -e "$red  43.  $white Check Usage of VPS Ram"
echo -e "$red  44.  $white Reboot VPS"
echo -e "$red  45.  $white Speedtest VPS"
echo -e "$red  46.  $white Information Display System"
echo -e "$red  47.  $white Info Script Auto Install"
echo -e "$red  48.  $white Start SSH Websocket"
echo -e "$red  49.  $white Update Menu Terbaru"
echo -e "$red═══════════════════════════════════════════"
echo -e "$red   0.  $white Exit From Putty / JuiceSSH / Termux"
echo -e "$gren═══════════════════════════════════════════"
echo -e ""
read -p "     Please Input Number  [1-59 or 0] :  " menu
echo -e ""
case $menu in
1)
usernew
;;
2)
trial
;;
3)
renew
;;
4)
deluser
;;
5)
cek
;;
6)
member
;;
7)
delete
;;
8)
autokill
;;
9)
ceklim
;;
10)
restart
;;
11)
add-wg
;;
12)
del-wg
;;
13)
cek-wg
;;
14)
renew-wg
;;
15)
add-ssr
;;
16)
add-ss
;;
17)
del-ssr
;;
18)
del-ss
;;
19)
renew-ssr
;;
20)
renew-ss
;;
32)
cek-ss
;;
21)
ssr
;;
22)
add-ws
;;
23)
del-ws
;;
24)
renew-ws
;;
25)
cek-ws
;;
26)
add-vless
;;
27)
del-vless
;;
28)
renew-vless
;;
29)
cek-vless
;;
30)
add-tr
;;
31)
del-tr
;;
32)
renew-tr
;;
33)
cek-tr
;;
34)
add-host
;;
35)
certv2ray
;;
36)
change-port
;;
49)
autobackup
;;
37)
backup
;;
38)
restore
;;
39)
wbmn
;;
40)
limit-speed
;;
41)
ram
;;
42)
reboot
;;
43)
speedtest
;;
44)
info
;;
45)
about
;;
46)
systemctl start edu-proxy
;;
47)
update
;;
x)
clear
menu
;;
*)
echo -e "$red Please enter an correct number!!!"
;;
esac
