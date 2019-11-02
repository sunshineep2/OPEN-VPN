#!/bin/bash
#Script auto create trial user SSH
#will expired after 1 day


IP=`dig +short myip.opendns.com @resolver1.opendns.com`

Login=trial`</dev/urandom tr -dc X-Z0-9 | head -c4`
hari="1"
Pass=`</dev/urandom tr -dc a-f0-9 | head -c9`

useradd -e `date -d "$hari days" +"%Y-%m-%d"` -s /bin/false -M $Login
echo -e "$Pass\n$Pass\n"|passwd $Login &> /dev/null
echo -e ""
echo -e "====Trial SSH Account====" | lolcat
echo -e "Host: $IP"
#echo -e "Port OpenSSH: 22,143"
#echo -e "Port Dropbear: 80,443"
#echo -e "Port Squid: 8080,3128"
fi
	echo "Port Nginx : 85"
	echo "IP Proxy : $IP"
	echo "Port Proxy : $PROXY"
	echo ""
	case $OPENVPNSYSTEM in
		1)
		echo "Download My Config : http://$IP:85/$CLIENT.ovpn"
		;;
		2)
		echo "Download Config : http://$IP:85/$CLIENT.ovpn"
		echo ""
		echo "Your Username : $Usernames"
		echo "Your Password : $Passwords"
		echo "Expire : Never"
		;;
		3)
		echo "Download Config : http://$IP:85/$CLIENT.ovpn"
		;;
	esac
echo -e "Username: $Login"
echo -e "Password: $Pass\n"
echo -e "=========================" | lolcat
echo -e ""
