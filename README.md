# Nmap Pre-Configuration Script

The Nmap Pre-Configuration Script is a Bash script designed to simplify the process of running Nmap scans for users, especially beginners who may not be familiar with the various options available. This script allows users to easily perform network scans on specified IP addresses, choose different scan types, and use custom Nmap scripts. It also supports IP address spoofing to enhance privacy during scans.

## Features
* User-Friendly Interface: Provides a straightforward command-line interface for entering scan parameters.
* Multiple Scan Types: Supports various Nmap scan types including TCP, UDP, FIN, XMAS, NULL, WINDOW, and MAIMON.
* Custom Nmap Scripts: Allows users to execute custom Nmap scripts for enhanced scanning capabilities.
* IP Spoofing: Users can spoof their IP address during scans for added anonymity.
* Output Management: Automatically saves scan results in a user-friendly format in the current working directory.
## Installation
To use the Nmap Pre-Configuration Script, ensure you have Nmap installed on your machine. You can install Nmap using your package manager. For example, on Ubuntu, you can run:

```bash
sudo apt update
sudo apt install nmap
```

### Clone the Repository:
```bash
git clone https://github.com/DaddyUchiha/NmapScan
cd NmapScan
chmod +x nmapscript.sh
```

#### Run the Script:

```bash
./nmapscript.sh
```

#### Follow the Prompts:

*When prompted, enter the following:*

* IP Address: 192.168.1.1

* Do you want to run any script? [NO]

* Enter the scan type you want to do: T

* Do you want to spoof your IP address? [NO]
## Important Notes
* Ensure you have the necessary permissions to run Nmap and perform scans on the target IP addresses.

* Use this script responsibly and only on networks you have permission to scan.
