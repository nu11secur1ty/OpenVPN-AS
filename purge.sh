#!/usr/bin/bash
# nu11secur1ty - OpenVPN - GUI
 
apt purge openvpn-as -y
rm -rf /usr/local/openvpn_as/
rm -rf /etc/apt/sources.list.d/openvpn-as-repo.list
rm -rf /etc/apt/trusted.gpg.d/as-repository.asc
apt update -y
apt upgrade -y
apt autoremove -y
apt dist-upgrade -y
userdel openvpn_as
