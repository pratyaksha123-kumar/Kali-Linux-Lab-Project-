# Detailed Lab Setup Guide

## Prerequisites
- Download: Kali ISO/OVA, Metasploitable 2 ZIP, Ubuntu Server ISO, DVWA Git repo.

## Step-by-Step
1. **VirtualBox Setup**:
   - Install VirtualBox + Extension Pack.

2. **Kali VM**:
   - Import OVA or create new VM.
   - Network: Internal Network > LabNet.
   - Update: `sudo apt update && sudo apt upgrade -y`.

3. **Metasploitable VM**:
   - Import .vmx/ova.
   - Network: Internal Network > LabNet.
   - Boot (no login needed).

4. **DVWA Ubuntu VM**:
   - Create Ubuntu VM, install minimal server.
   - Run `./setup-dvwa.sh` (script below).

5. **Verify**:
   - From Kali: `ping <target-ip>` and `nmap -sn 192.168.56.0/24`.

## Troubleshooting
- No connectivity: Check network adapter settings.
- Metasploit DB: `msfdb init`.
