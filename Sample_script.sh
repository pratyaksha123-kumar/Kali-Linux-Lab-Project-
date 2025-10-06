#!/bin/bash

# Kali Linux Lab: Nmap Recon Script
# Usage: ./nmap-scan.sh <target-ip-or-range> [optional: -sV for version scan]

TARGET=${1:-"192.168.56.0/24"}  # Default to lab network
OPTIONS=${2:-"-sn"}  # Default: Host discovery

echo "Starting Nmap scan on $TARGET with options: $OPTIONS"
echo "Ethical use only: Isolated lab environment."

# Host discovery
nmap $OPTIONS $TARGET

# If version scan requested, add service enumeration
if [ "$2" = "-sV" ]; then
    echo "Running detailed service scan..."
    nmap -sV -O $TARGET
fi

echo "Scan complete. Review output for open ports/services."
