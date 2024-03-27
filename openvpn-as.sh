#!/usr/bin/bash
# nu11secur1ty - OpenVPN - GUI
 
apt update && apt upgrade && apt dist-upgrade -y 
apt install ca-certificates wget net-tools gnupg -y
wget https://as-repository.openvpn.net/as-repo-public.asc -qO /etc/apt/trusted.gpg.d/as-repository.asc
echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/as-repository.asc] http://as-repository.openvpn.net/as/debian jammy main" > /etc/apt/sources.list.d/openvpn-as-repo.list
apt update && apt upgrade && apt dist-upgrade -y
apt autoremove -y
apt install openvpn-as -y
