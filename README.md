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

### 2. Exploitation (Metasploit)
Start with `msfconsole` and target known vulnerabilities.

Example (vsftpd backdoor):

### 3. Traffic Analysis (Wireshark)
Capture traffic during scans/exploits. Filter for protocols like `http` or `ftp`.

## Scripts Included
- `nmap-scan.sh`: Basic Nmap reconnaissance.
- `setup-dvwa.sh`: Automate DVWA installation on Ubuntu.
- `msf-quickstart.rc`: Metasploit resource script for common exploits.

## Learnings and Next Steps
- Gained hands-on experience with OWASP Top 10 (via DVWA) and common exploits.
- Emphasized post-exploitation (e.g., privilege escalation) and reporting.
- Future Enhancements: Add Burp Suite for web testing, integrate Ansible for automation.

## Requirements
- Host: 8GB+ RAM, 50GB disk.
- Kali Linux (latest).
- Ethical mindset: Follow laws like CFAA in the US.

## License
MIT License. Use for learning only—do not misuse.

## Contact
Built by [Your Name]. Questions? Open an issue.

---

*Last Updated: [Date]*
