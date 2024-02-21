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
	echo "Step 3 =>Enter the scan type do you want to apply"
	echo "T => TCP, U => UDP, F => FIN, X => XMAS, N => NULL"
	echo "If you want to spoof you ipaddress then type YES else NO"
	echo "This Script will automatically save the capture to present working directory"
	exit 1
else
	echo ""
fi

echo "Enter the 'IPADDRESS' which you will perform Network scan"
read -p "==> : " ipaddr

read -p "Do you want to run any Script?? [YES] [NO] => " script

echo "Enter the scan type you want to do : TCP, UDP, FIN ,XMAS, NULL, WINDOW, MAIMON"

read -p "[T], [U], [F], [X], [N], [W], [M]: " type

echo "You selected ${type} ScanType"

read -p "Do you want to Spoof your ipaddress [YES] [NO]" spoof

read -p "Enter Spoof Ipaddress : " ipspoof

read -p "Enter Network Interface name : " ifname

echo "Nmap scan on ${ipaddr}"


function yes {
echo -e "Please first see Scripts in \033[31m/usr/share/nmap/scripts {DIR}\033[0m"
read -e -p "Script name : " scriptname
	
if [ ${type} = "T" ] || [ ${type} = "t" ]; then
	echo $(sudo nmap -sT -sV -O -A --script=${scriptname} -v ${ipaddr} > "SCANNMAP ${ipaddr} $(date).txt")
elif [ ${type} = "U" ] || [ ${type} = "u" ]; then
	echo $(sudo nmap -sU -sV -O -A --script=${scriptname} -v ${ipaddr} > "SCANNMAP ${ipaddr} $(date).txt")
elif [ ${type} = "F" ] || [ ${type} = "f" ]; then
	echo $(sudo nmap -sF -sV -O -A --script=${scriptname} -v ${ipaddr} > "SCANNMAP ${ipaddr} $(date).txt")
elif [ ${type} = "X" ] || [ ${type} = "x" ]; then
	echo $(sudo nmap -sX -sV -O -A --script=${scriptname} -v ${ipaddr} > "SCANNMAP ${ipaddr} $(date).txt")
elif [ ${type} = "N" ] || [ ${type} = "n" ]; then
	echo $(sudo nmap -sN -sV -O -A --script=${scriptname} -v ${ipaddr} > "SCANNMAP ${ipaddr} $(date).txt")
elif [ ${type} = "W" ] || [ ${type} = "w" ]; then
	echo $(sudo nmap -sW -sV -O -A --script=${scriptname} -v ${ipaddr} > "SCANNMAP ${ipaddr} $(date).txt")
elif [ ${type} = "M" ] || [ ${type} = "m" ]; then
	echo $(sudo nmap -sM -sV -O -A --script=${scriptname} -v ${ipaddr} > "SCANNMAP ${ipaddr} $(date).txt")
fi
}
function no {
echo "Processding Without scripts"
if [ ${type} = "T" ] || [ ${type} = "t" ]; then
	echo $(sudo nmap -sT -sV -O -A -v ${ipaddr} > "SCANNMAP ${ipaddr} $(date).txt")
elif [ ${type} = "U" ] || [ ${type} = "u" ]; then
	echo $(sudo nmap -sU -sV -O -A -v ${ipaddr} > "SCANNMAP ${ipaddr} $(date).txt")
elif [ ${type} = "F" ] || [ ${type} = "f" ]; then
	echo $(sudo nmap -sF -sV -O -A  -v ${ipaddr} > "SCANNMAP ${ipaddr} $(date).txt")
elif [ ${type} = "X" ] || [ ${type} = "x" ]; then
	 echo $(sudo nmap -sX -sV -O -A -v ${ipaddr} > "SCANNMAP ${ipaddr} $(date).txt")
elif [ ${type} = "N" ] || [ ${type} = "n" ]; then
         echo $(sudo nmap -sN -sV -O -A -v ${ipaddr} > "SCANNMAP ${ipadddr} $(date).txt")
elif [ ${type} = "W" ] || [ ${type} = "w" ]; then
         echo $(sudo nmap -sW -sV -O -A -v ${ipaddr} > "SCANNMAP ${ipadddr} $(date).txt")
elif [ ${type} = "M" ] || [ ${type} = "M" ]; then
         echo $(sudo nmap -sM -sV -O -A -v ${ipaddr} > "SCANNMAP ${ipadddr} $(date).txt")           
fi
}

function spoof {
echo -e "Please first see Scripts in \033[31m/usr/share/nmap/scripts {DIR}\033[0m"
read -e -p "Script name : " scriptname
	
if [ ${type} = "T" ] || [ ${type} = "t" ]; then
	echo $(sudo nmap -sT -sV -O -A --script=${scriptname} -e ${ifname} -S ${ipspoof} -v ${ipaddr} > "SCANNMAP ${ipaddr} $(date).txt")
elif [ ${type} = "U" ] || [ ${type} = "u" ]; then
	echo $(sudo nmap -sU -sV -O -A --script=${scriptname} -e ${ifname} -S ${ipspoof} -v ${ipaddr} > "SCANNMAP ${ipaddr} $(date).txt")
elif [ ${type} = "F" ] || [ ${type} = "f" ]; then
	echo $(sudo nmap -sF -sV -O -A --script=${scriptname} -e ${ifname} -S ${ipspoof} -v ${ipaddr} > "SCANNMAP ${ipaddr} $(date).txt")
elif [ ${type} = "X" ] || [ ${type} = "x" ]; then
	echo $(sudo nmap -sX -sV -O -A --script=${scriptname} -e ${ifname} -S ${ipspoof} -v ${ipaddr} > "SCANNMAP ${ipaddr} $(date).txt")
elif [ ${type} = "N" ] || [ ${type} = "n" ]; then
	echo $(sudo nmap -sN -sV -O -A --script=${scriptname} -e ${ifname} -S ${ipspoof} -v ${ipaddr} > "SCANNMAP ${ipaddr} $(date).txt")		
elif [ ${type} = "W" ] || [ ${type} = "w" ]; then
	echo $(sudo nmap -sW -sV -O -A --script=${scriptname} -e ${ifname} -S ${ipspoof} -v ${ipaddr} > "SCANNMAP ${ipaddr} $(date).txt")
elif [ ${type} = "M" ] || [ ${type} = "m" ]; then
	echo $(sudo nmap -sM -sV -O -A --script=${scriptname} -e ${ifname} -S ${ipspoof} -v ${ipaddr} > "SCANNMAP ${ipaddr} $(date).txt")
fi
}

function spoofonly {
if [ ${type} = "T" ] || [ ${type} = "t" ]; then
	echo $(sudo nmap -sT -sV -O -A -e ${ifname} -S ${ipspoof} -v ${ipaddr} > "SCANNMAP ${ipaddr} $(date).txt")
elif [ ${type} = "U" ] || [ ${type} = "u" ]; then
	echo $(sudo nmap -sU -sV -O -A -e ${ifname} -S ${ipspoof} -v ${ipaddr} > "SCANNMAP ${ipaddr} $(date).txt")
elif [ ${type} = "F" ] || [ ${type} = "f" ]; then
	echo $(sudo nmap -sF -sV -O -A -e ${ifname} -S ${ipspoof} -v ${ipaddr} > "SCANNMAP ${ipaddr} $(date).txt")
elif [ ${type} = "X" ] || [ ${type} = "x" ]; then
	echo $(sudo nmap -sX -sV -O -A -e ${ifname} -S ${ipspoof} -v ${ipaddr} > "SCANNMAP ${ipaddr} $(date).txt")
elif [ ${type} = "N" ] || [ ${type} = "n" ]; then
	echo $(sudo nmap -sN -sV -O -A -e ${ifname} -S ${ipspoof} -v ${ipaddr} > "SCANNMAP ${ipaddr} $(date).txt")
elif [ ${type} = "W" ] || [ ${type} = "w" ]; then
	echo $(sudo nmap -sW -sV -O -A -e ${ifname} -S ${ipspoof} -v ${ipaddr} > "SCANNMAP ${ipaddr} $(date).txt")	
elif [ ${type} = "M" ] || [ ${type} = "m" ]; then
	echo $(sudo nmap -sM -sV -O -A -e ${ifname} -S ${ipspoof} -v ${ipaddr} > "SCANNMAP ${ipaddr} $(date).txt")
fi
}

if [ ${script} = "yes" ] || [ ${script} = "YES" ]; then
	yes
elif [ ${script} = "NO" ] || [ ${script} = "no" ]; then
	no
elif [ ${script} = "yes" ] && [ ${spoof} = "yes" ]; then
	spoof 
elif [ ${script} = "no" ] && [ ${spoof} = "yes"]; then
	spoofonly
else
	echo "0"
fi
echo "Scan Output is save on "SCANMAP${ipaddr} $(date)""
echo -e "\033[32;5;2mScript Completed\033[0m"

