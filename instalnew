#/bin/bash
rm ip.ip 2> /dev/null
clear
echo "RickNetFree" > squidban
squidfail=$(cat squidban)
echo "Adaptado por K1R170" > squidcre
squidcre=$(cat squidcre)
if grep -i K1R170 squidban 1>/dev/null 2>/dev/null ; then
echo -e "\033[1;33m- - - - -> \033[01;34mScript Feito por @"$squidfail"\033[01;33m $squidcre\033[0m"
else ###########
echo "falhou"
exit ##########
fi
cat -n /etc/issue |grep 1 |cut -d' ' -f6,7,8 |sed 's/1//' |sed 's/	//' > /etc/so 
echo -e "\033[1;33m- - - - -> \033[01;34mSeu sistema operacional:\033[0m $(cat /etc/so)"
os=$(cat /etc/so)
echo -e "Digite o ip do vps !" ; read ip
clear
echo -e "\033[1;33m- - - - -> \033[01;34mScript Feito por @"$squidfail"\033[01;33m $squidcre\033[0m"
echo -e "\033[1;33m- - - - -> \033[01;34mSeu sistema operacional:\033[0m $(cat /etc/so)"
echo -e "\033[1;33m- - - - -> \033[01;34mSeu ip:\033[0m $ip"
echo -e "\033[1;32mSQUID É CONFIGURADO PARA TRABALHAR NAS PORTAS\033[0m 80, 8080, 8799, 3128"
echo -e "\033[1;32m       -- NOVIDADES --"
echo -e "\033[1;32m# Libera login utilizando senha (util na amazon)"
echo -e "\033[1;32m# Faz o tunelamento de forma correta (util na azure)"
echo -e "\033[1;32m# Varios problemas muitas vezes ja nativo na maquina (vps) serao corrigidos !!\033[0m" 
echo -e "\033[1;32m# Usa o ufw para liberar portas (util na locaweb)
# Pegue o link do meu canal executando\033[0m canalconf"

echo '#!/bin/bash
echo "Canal 
https://telegram.me/TeamPowerr"' > /bin/canalconf
chmod a+x /bin/canalconf

if cat /etc/so |grep -i ubuntu |grep 16 1> /dev/null 2> /dev/null ; then
echo -e "\033[01;31mConfigurando, Aguarde...\033[0m"
apt-get update 1> /dev/null 2> /dev/null
apt-get install squid3 -y 1> /dev/null 2> /dev/null
apt-get install ufw -y 1> /dev/null 2> /dev/null

service apache2 stop 1> /dev/null 2> /dev/null

rm /etc/ssh/sshd_custom 1>/dev/null 2>/dev/null
cp /etc/ssh/sshd_config /etc/ssh/sshd_config.bak
cat /etc/ssh/sshd_config |grep -v -i allowusers |grep -v -i passwordauthen |grep -v -i uselogin |grep -v -i permitrootlogin |grep -v -i permittunnel >> /etc/ssh/sshd_custom
rm /etc/ssh/sshd_config
cp /etc/ssh/sshd_custom /etc/ssh/sshd_config
sleep 1s
echo "PasswordAuthentication yes" >> /etc/ssh/sshd_config
echo "Port 443" >> /etc/ssh/sshd_config
echo "Port 22" >> /etc/ssh/sshd_config
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
echo "PermitTunnel yes" >> /etc/ssh/sshd_config
echo "UseDns no" >> /etc/ssh/sshd_config

service ssh restart 1> /dev/null 2> /dev/null

cd /etc/squid
echo "http_port 80" > squid.conf
echo "http_port 8080" >> squid.conf
echo "http_port 8799" >> squid.conf
echo "http_port 3128" >> squid.conf
echo "visible_hostname ricknetfree" >> squid.conf
echo "acl ip dstdomain $ip" >> squid.conf
echo "acl accept method GET" >> squid.conf
echo "acl accept method POST" >> squid.conf
echo "acl accept method OPTIONS" >> squid.conf
echo "acl accept method CONNECT" >> squid.conf
echo "acl accept method PUT" >> squid.conf
echo "acl HEAD method HEAD" >> squid.conf
echo "http_access allow ip" >> squid.conf
echo "http_access allow accept" >> squid.conf
echo "http_access allow HEAD" >> squid.conf
echo "http_access deny all" >> squid.conf
echo " cache deny all" >> squid.conf

service squid restart 1> /dev/null 2> /dev/null

ufw allow 443 1>/dev/null 2>/dev/null
ufw allow 80 1>/dev/null 2>/dev/null
ufw allow 8080 1>/dev/null 2>/dev/null
ufw allow 8799 1>/dev/null 2>/dev/null
ufw allow 3128 1>/dev/null 2>/dev/null

echo -e "\033[01;31mO script não reseta mais o firewall iptables
Caso vc queira fazer isso os comandos :
iptables -F
iptables -X
iptables -t nat -F
E o firewall estara resetado\033[0m"

echo -e "\033[01;32mTudo terminado crie um usuario e teste !! \033[0m"
exit 0
fi

if cat /etc/so |grep -i ubuntu 1> /dev/null 2> /dev/null ; then
echo -e "\033[01;31mConfigurando, Aguarde...\033[0m"
apt-get update 1> /dev/null 2> /dev/null
apt-get install squid3 -y 1> /dev/null 2> /dev/null
apt-get install ufw -y 1> /dev/null 2> /dev/null

service apache2 stop 1> /dev/null 2> /dev/null

rm /etc/ssh/sshd_custom 1>/dev/null 2>/dev/null
cp /etc/ssh/sshd_config /etc/ssh/sshd_config.bak
cat /etc/ssh/sshd_config |grep -v -i allowusers |grep -v -i passwordauthen |grep -v -i uselogin |grep -v -i permitrootlogin |grep -v -i permittunnel >> /etc/ssh/sshd_custom
rm /etc/ssh/sshd_config
cp /etc/ssh/sshd_custom /etc/ssh/sshd_config
sleep 1s
echo "PasswordAuthentication yes" >> /etc/ssh/sshd_config
echo "Port 443" >> /etc/ssh/sshd_config
echo "Port 22" >> /etc/ssh/sshd_config
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
echo "PermitTunnel yes" >> /etc/ssh/sshd_config
echo "UseDns no" >> /etc/ssh/sshd_config

service ssh restart 1> /dev/null 2> /dev/null

cd /etc/squid3
echo "http_port 80" > squid.conf
echo "http_port 8080" >> squid.conf
echo "http_port 8799" >> squid.conf
echo "http_port 3128" >> squid.conf
echo "visible_hostname ricknetfree" >> squid.conf
echo "acl ip dstdomain $ip" >> squid.conf
echo "acl accept method GET" >> squid.conf
echo "acl accept method POST" >> squid.conf
echo "acl accept method OPTIONS" >> squid.conf
echo "acl accept method CONNECT" >> squid.conf
echo "acl accept method PUT" >> squid.conf
echo "acl HEAD method HEAD" >> squid.conf
echo "http_access allow ip" >> squid.conf
echo "http_access allow accept" >> squid.conf
echo "http_access allow HEAD" >> squid.conf
echo "http_access deny all" >> squid.conf
echo " cache deny all" >> squid.conf


ufw allow 443 1>/dev/null 2>/dev/null
ufw allow 80 1>/dev/null 2>/dev/null
ufw allow 8080 1>/dev/null 2>/dev/null
ufw allow 8799 1>/dev/null 2>/dev/null
ufw allow 3128 1>/dev/null 2>/dev/null

service squid3 restart 1> /dev/null 2> /dev/null

echo -e "\033[01;31mO script não reseta mais o firewall iptables
Caso vc queira fazer isso os comandos :
iptables -F
iptables -X
iptables -t nat -F
E o firewall estara resetado\033[0m"

echo -e "\033[01;32mTudo terminado crie um usuario e teste !! \033[0m"
exit 0
fi

if cat /etc/so |grep -i centos 1> /dev/null 2> /dev/null ; then
echo -e "\033[01;31mConfigurando, Aguarde...\033[0m"
yum update 1> /dev/null 2> /dev/null
yum install squid -y 1> /dev/null 2> /dev/null

service httpd stop 1> /dev/null 2> /dev/null

rm /etc/ssh/sshd_custom 1>/dev/null 2>/dev/null
cp /etc/ssh/sshd_config /etc/ssh/sshd_config.bak
cat /etc/ssh/sshd_config |grep -v -i allowusers |grep -v -i passwordauthen |grep -v -i uselogin |grep -v -i permitrootlogin |grep -v -i permittunnel >> /etc/ssh/sshd_custom
rm /etc/ssh/sshd_config
cp /etc/ssh/sshd_custom /etc/ssh/sshd_config
sleep 1s
echo "PasswordAuthentication yes" >> /etc/ssh/sshd_config
echo "Port 443" >> /etc/ssh/sshd_config
echo "Port 22" >> /etc/ssh/sshd_config
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
echo "PermitTunnel yes" >> /etc/ssh/sshd_config
echo "UseDns no" >> /etc/ssh/sshd_config

service sshd restart 1> /dev/null 2> /dev/null

cd /etc/squid
echo "http_port 80" > squid.conf
echo "http_port 8080" >> squid.conf
echo "http_port 8799" >> squid.conf
echo "http_port 3128" >> squid.conf
echo "visible_hostname ricknetfree" >> squid.conf
echo "acl ip dstdomain $ip" >> squid.conf
echo "acl accept method GET" >> squid.conf
echo "acl accept method POST" >> squid.conf
echo "acl accept method OPTIONS" >> squid.conf
echo "acl accept method CONNECT" >> squid.conf
echo "acl accept method PUT" >> squid.conf
echo "acl HEAD method HEAD" >> squid.conf
echo "http_access allow ip" >> squid.conf
echo "http_access allow accept" >> squid.conf
echo "http_access allow HEAD" >> squid.conf
echo "http_access deny all" >> squid.conf
echo " cache deny all" >> squid.conf


service squid restart 1> /dev/null 2> /dev/null

ufw allow 443 1>/dev/null 2>/dev/null
ufw allow 80 1>/dev/null 2>/dev/null
ufw allow 8080 1>/dev/null 2>/dev/null
ufw allow 8799 1>/dev/null 2>/dev/null
ufw allow 3128 1>/dev/null 2>/dev/null

echo -e "\033[01;32mO script não reseta mais o firewall iptables
Caso vc queira fazer isso os comandos :
iptables -F
iptables -X
iptables -t nat -F
E o firewall estara resetado\033[0m"
echo -e "\033[01;31mTudo terminado crie um usuario e teste !! \033[0m"
exit
fi

if cat /etc/so |grep -i debian 1> /dev/null 2> /dev/null ; then
echo -e "\033[01;31mConfigurando, Aguarde...\033[0m"
apt-get update 1> /dev/null 2> /dev/null
apt-get install squid3 -y 1> /dev/null 2> /dev/null
service apache2 stop 1> /dev/null 2> /dev/null
apt-get install ufw -y 1> /dev/null 2> /dev/null

rm /etc/ssh/sshd_custom 1>/dev/null 2>/dev/null
cp /etc/ssh/sshd_config /etc/ssh/sshd_config.bak
cat /etc/ssh/sshd_config |grep -v -i allowusers |grep -v -i passwordauthen |grep -v -i uselogin |grep -v -i permitrootlogin |grep -v -i permittunnel >> /etc/ssh/sshd_custom
rm /etc/ssh/sshd_config
cp /etc/ssh/sshd_custom /etc/ssh/sshd_config
sleep 1s
echo "PasswordAuthentication yes" >> /etc/ssh/sshd_config
echo "Port 443" >> /etc/ssh/sshd_config
echo "Port 22" >> /etc/ssh/sshd_config
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
echo "PermitTunnel yes" >> /etc/ssh/sshd_config

service ssh restart 1> /dev/null 2> /dev/null

cd /etc/squid3

echo "http_port 80" > squid.conf
echo "http_port 8080" >> squid.conf
echo "http_port 8799" >> squid.conf
echo "http_port 3128" >> squid.conf
echo "visible_hostname ricknetfree" >> squid.conf
echo "acl ip dstdomain $ip" >> squid.conf
echo "acl accept method GET" >> squid.conf
echo "acl accept method POST" >> squid.conf
echo "acl accept method OPTIONS" >> squid.conf
echo "acl accept method CONNECT" >> squid.conf
echo "acl accept method PUT" >> squid.conf
echo "acl HEAD method HEAD" >> squid.conf
echo "http_access allow ip" >> squid.conf
echo "http_access allow accept" >> squid.conf
echo "http_access allow HEAD" >> squid.conf
echo "http_access deny all" >> squid.conf
echo " cache deny all" >> squid.conf


service squid3 restart 1> /dev/null 2> /dev/null

ufw allow 443 1>/dev/null 2>/dev/null
ufw allow 80 1>/dev/null 2>/dev/null
ufw allow 8080 1>/dev/null 2>/dev/null
ufw allow 8799 1>/dev/null 2>/dev/null
ufw allow 3128 1>/dev/null 2>/dev/null

echo -e "\033[01;31mO script não reseta mais o firewall iptables
Caso vc queira fazer isso os comandos :
iptables -F
iptables -X
iptables -t nat -F
E o firewall estara resetado\033[0m"

echo -e "\033[01;32mTudo terminado crie um usuario e teste !! \033[0m"
exit 0
fi
