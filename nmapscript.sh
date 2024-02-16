#!/bin/bash

echo -e "\033[31;1mModified by Daddy\033[0m"

echo "########################################################################################################"
echo -e "\e[0;31m#######################################  Nmap Pre-Configure ###########################################\e[0m"
echo "########################################################################################################"



echo "If you need any help Type --help"

if [ "$1" = "--help" ]; then
	echo "This section helps to run command correctly"
	echo "First this script is for beginners who dosen't know much about Scanning"
	echo "This script will automatically scan IP"
	echo "usage =>./nmapscript.sh"
	echo "Step 1 =>Enter IPADDRESS of the Victim Host"
	echo "Step 2 =>If you want to run any script then 'yes' else 'no'"
	echo "This Script will automatically save the capture to present working directory"
	exit 1
else
	echo ""
fi

echo "Enter the 'IPADDRESS' which you will perform Network scan"
read -p "==> : " ipaddr

read -p "Do you want to run any Script?? [YES] [NO] => " script

echo "Nmap scan on ${ipaddr}"


if [ ${script} = "yes" ] || [ ${script} = "YES" ]; then
	echo -e "Please first see Scripts in \033[31m/usr/share/nmap/scripts {DIR}\033[0m"
	read -e -p "Script name : " scriptname
	echo $(sudo nmap -sF -sV -O -A --script=${scriptname} -v ${ipaddr} > "SCANNMAP ${ipaddr}".txt)
else
	echo "Processding Without scripts"
	echo $(sudo nmap -O -A -sX -v ${ipaddr} > "SCANNMAP ${ipaddr}.txt")
fi

echo -e "\033[32;5;2mScript Completed\033[0m"

