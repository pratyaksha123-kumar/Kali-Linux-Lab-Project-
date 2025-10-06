# Kali Linux Lab — Personal Cybersecurity Project

A controlled virtual environment for practicing ethical hacking and penetration testing skills. Built using Kali Linux as the attacker platform and vulnerable VMs as targets. Focuses on reconnaissance, scanning (Nmap), exploitation (Metasploit), and traffic analysis (Wireshark).

## Project Overview
- **Goal**: Safely simulate real-world cybersecurity scenarios in an isolated lab to learn the penetration testing lifecycle (e.g., PTES methodology).
- **Tools Used**:
  - Kali Linux (attacker VM)
  - Nmap (scanning/recon)
  - Metasploit Framework (exploitation)
  - Wireshark (traffic analysis)
  - Vulnerable targets: Metasploitable 2 and DVWA (on Ubuntu)
- **Virtualization**: Oracle VirtualBox (free alternative: VMware Workstation Player)
- **Ethics**: This lab is for educational purposes only. All activities are contained in a virtual network—never test on real systems without permission.

## Lab Architecture
- **Network**: Isolated Internal Network ("LabNet") to prevent external impact.
- **VMs**:
  - Kali Linux (Attacker): 4GB RAM, 20GB disk.
  - Metasploitable 2 (Target 1): General vulnerabilities (e.g., FTP backdoor).
  - Ubuntu + DVWA (Target 2): Web app vulnerabilities (e.g., SQL injection).

Example IP Range: 192.168.56.0/24 (discovered via Nmap).

## Setup Instructions
Follow these steps to replicate the lab (detailed in `setup-guide.md`).

1. Install VirtualBox from [virtualbox.org](https://www.virtualbox.org/).
2. Download and import Kali Linux VM from [kali.org](https://www.kali.org/get-kali/).
3. Add vulnerable targets (see below).
4. Configure networking to "Internal Network: LabNet".

### Targets Setup
- **Metasploitable 2**: Download from [SourceForge](https://sourceforge.net/projects/metasploitable/files/Metasploitable2/). Import into VirtualBox.
- **DVWA on Ubuntu**:
  - Install Ubuntu Server.
  - Run the setup script: `./setup-dvwa.sh` (see Scripts section).

## Key Exercises
### 1. Reconnaissance and Scanning (Nmap)
Use scripts like `nmap-scan.sh` to discover hosts and enumerate services.

Example Output:
